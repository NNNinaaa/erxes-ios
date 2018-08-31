//
//  SettingsController.swift
//  erxes-ios
//
//  Created by Soyombo bat-erdene on 8/30/18.
//  Copyright © 2018 soyombo bat-erdene. All rights reserved.
//

import UIKit
import Apollo
class SettingsController: UIViewController {

    var titles = ["Change Password","Email signatures","Notification settings","Sign Out"]
    var autoCompleteCharacterCount = 0
    var timer = Timer()
    var brands = [BrandDetail]()
    let signatureView = EmailSignaturesModalView()
    var profileView:CustomProfileView?
    let client: ApolloClient = {
        let configuration = URLSessionConfiguration.default
        let currentUser = ErxesUser.sharedUserInfo()
        configuration.httpAdditionalHeaders = ["x-token": currentUser.token as Any,
                                               "x-refresh-token": currentUser.refreshToken as Any]
        let url = URL(string: Constants.API_ENDPOINT)!
        return ApolloClient(networkTransport: HTTPNetworkTransport(url: url, configuration: configuration))
    }()
    
    var loader: ErxesLoader = {
        let loader = ErxesLoader()
        loader.lineWidth = 3
        return loader
    }()
    var tableView: UITableView = {
        let tableview = UITableView()
        tableview.backgroundColor = .clear
        tableview.register(SettingsCell.self, forCellReuseIdentifier: "SettingsCell")
        tableview.estimatedRowHeight = 40
        tableview.contentInset = UIEdgeInsetsMake(100, 0, 0, 0 )
        tableview.tableFooterView = UIView()
//        tableview.backgroundColor = .blue
        return tableview
    }()
    
    func configureViews(){
        signatureView.brandField.textField.delegate = self
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        let currentUser = ErxesUser.sharedUserInfo()
        profileView = CustomProfileView(user: currentUser)
        profileView?.backgroundColor = Constants.INBOX_BG_COLOR
        self.view.addSubview(profileView!)
        self.view.addSubview(loader)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SETTINGS"
         self.view.backgroundColor = Constants.INBOX_BG_COLOR
        configureViews()
        getBrands()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.topLayoutGuide.snp.bottom)
            make.bottom.equalTo(bottomLayoutGuide.snp.top)
        }
        
        profileView?.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.topLayoutGuide.snp.bottom)
            make.height.equalTo(100)
        }
        
    }
    
    func getBrands(){
        loader.startAnimating()
        let query = BrandsQuery()
        client.fetch(query: query, cachePolicy: .fetchIgnoringCacheData) { [weak self] result, error in
            if let error = error {
                print(error.localizedDescription)
                let alert = FailureAlert(message: error.localizedDescription)
                alert.show(animated: true)
                self?.loader.stopAnimating()
                return
            }
            
            if let err = result?.errors {
                let alert = FailureAlert(message: err[0].localizedDescription)
                alert.show(animated: true)
                self?.loader.stopAnimating()
            }
            
            if result?.data != nil {
                if let allBrands = result?.data?.brands {
                    self?.brands = allBrands.map { ($0?.fragments.brandDetail)! }
                    
                    self?.loader.stopAnimating()
                    
                }
                
            }
        }
    }

    func changePassword(new:String,current:String){
        self.loader.startAnimating()
        let mutation = UsersChangePasswordMutation(currentPassword: current, newPassword: new)

        client.perform(mutation: mutation) { [weak self] result, error in
            if let error = error {
               
                self?.showResult(isSuccess: false, message: error.localizedDescription)
                self?.loader.stopAnimating()
                return
            }
            if let err = result?.errors {
                
                self?.showResult(isSuccess: false, message: err[0].localizedDescription)
               
                self?.loader.stopAnimating()
            }
            if result?.data != nil {
                if (result?.data?.usersChangePassword) != nil {
                    self?.showResult(isSuccess: true, message: "Changes Saved Successfully")
                }
                self?.loader.stopAnimating()
                
            }
        }
    }
    
}

extension SettingsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let passwordModalView = PasswordModalView()
            passwordModalView.show(animated: true)
            passwordModalView.handler = {
                let current = passwordModalView.currentField.textField.text
                let new = passwordModalView.newField.textField.text
                self.changePassword(new: new!, current: current!)
            }
        }else if indexPath.row == 1 {
            
            signatureView.show(animated: true)
        }
    }
}

extension SettingsController: UITableViewDataSource {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath) as? SettingsCell)!
        cell.contentView.backgroundColor = .clear
        
        cell.desc.text = titles[indexPath.row]
        cell.tintColor = Constants.ERXES_COLOR!

        return cell
    }
}


extension SettingsController: UITextFieldDelegate {
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var subString = (textField.text!.capitalized as NSString).replacingCharacters(in: range, with: string) // 2
        subString = formatSubstring(subString: subString)
        print(subString)
        if subString.count == 0 {
            resetValues()
        } else {
            searchAutocompleteEntriesWIthSubstring(substring: subString)
        }
        return true
    }
    
    func formatSubstring(subString: String) -> String {
        let formatted = String(subString.dropLast(autoCompleteCharacterCount)).lowercased().capitalized //5
        return formatted
    }
    
    func resetValues() {
        autoCompleteCharacterCount = 0
        signatureView.brandField.textField.text = ""
    }
    
    func searchAutocompleteEntriesWIthSubstring(substring: String) {
        let userQuery = substring
        let suggestions = getAutocompleteSuggestions(userText: substring) //1
    
        if suggestions.count > 0 {
            timer = .scheduledTimer(withTimeInterval: 0.01, repeats: false, block: { (timer) in //2
                let autocompleteResult = self.formatAutocompleteResult(substring: substring, possibleMatches: suggestions ) // 3
                self.putColourFormattedTextInTextField(autocompleteResult: autocompleteResult, userQuery : userQuery) //4
                self.moveCaretToEndOfUserQueryPosition(userQuery: userQuery) //5
            })
        } else {
            timer = .scheduledTimer(withTimeInterval: 0.01, repeats: false, block: { (timer) in //7
                self.signatureView.brandField.textField.text = substring
            })
            autoCompleteCharacterCount = 0
        }
    }
    
    func getAutocompleteSuggestions(userText: String) -> [BrandDetail]{
        var possibleMatches: [BrandDetail] = []
        for item in brands {
         
            let myString:NSString! = item.name! as NSString
            let substringRange :NSRange! = myString.range(of: userText.lowercased())
            print(myString)
            print(substringRange)
            if (substringRange.location == 0)
            {
                possibleMatches.append(item)
            }
        }
        print(possibleMatches )
        return possibleMatches
    }
    
    func putColourFormattedTextInTextField(autocompleteResult: String, userQuery : String) {
        let colouredString: NSMutableAttributedString = NSMutableAttributedString(string: userQuery + autocompleteResult)
        colouredString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.ERXES_COLOR, range: NSRange(location: userQuery.count,length:autocompleteResult.count))
        self.signatureView.brandField.textField.attributedText = colouredString
    }
    func moveCaretToEndOfUserQueryPosition(userQuery : String) {
        if let newPosition = self.signatureView.brandField.textField.position(from: self.signatureView.brandField.textField.beginningOfDocument, offset: userQuery.count) {
            self.signatureView.brandField.textField.selectedTextRange = self.signatureView.brandField.textField.textRange(from: newPosition, to: newPosition)
        }
        let selectedRange: UITextRange? = signatureView.brandField.textField.selectedTextRange
        signatureView.brandField.textField.offset(from: signatureView.brandField.textField.beginningOfDocument, to: (selectedRange?.start)!)
    }
    func formatAutocompleteResult(substring: String, possibleMatches: [BrandDetail]) -> String {
        var autoCompleteResult = possibleMatches[0].name as! String
        autoCompleteResult.removeSubrange(autoCompleteResult.startIndex..<autoCompleteResult.index(autoCompleteResult.startIndex, offsetBy: substring.count))
        autoCompleteCharacterCount = autoCompleteResult.count
        return autoCompleteResult
    }
}
