//
//  ContactController.swift
//  NMG.CRM
//
//  Created by Soyombo bat-erdene on 6/13/18.
//  Copyright © 2018 Erxes Inc. All rights reserved.
//

import UIKit
import Apollo

public struct ContactFilterOptions {

    public var segment: SegmentObj? = nil
    public var form: FormObj? = nil
    public var brand: BrandDetail? = nil
    public var lead: String = ""
    public var lifeCycle: String = ""
    public var integrationType: String = ""
    public var tag: TagDetail? = nil
   
    mutating func removeAll() {
        self = ContactFilterOptions()
    }
    public init() { }
}

class ContactController: UIViewController {

    var searchField:UITextField = {
       let field = UITextField(frame: CGRect(x: 16, y: 5, width: Constants.SCREEN_WIDTH-32, height: 30))
        field.layer.cornerRadius = 6
        field.backgroundColor = .white
        let imageView = UIImageView(image: UIImage.erxes(with: .magnifyingglass, textColor: .ERXES_COLOR))
        imageView.frame.size.width = 30
        imageView.contentMode = .scaleAspectFit
        field.leftView = imageView
        field.leftViewMode = .always
        field.placeholder = "Search"
        
        let btnCancel = UIButton(type: .custom)
        btnCancel.frame = CGRect(x: 0, y: 0, width: 80, height: 30)
        btnCancel.titleLabel?.font = Font.regular(13)
        btnCancel.setTitleColor(.ERXES_COLOR, for: .normal)
        btnCancel.setTitle("Cancel", for: .normal)
        btnCancel.contentMode = UIViewContentMode.center
        btnCancel.addTarget(self, action: #selector(cancelAction), for: .touchUpInside)
        
        field.rightView = btnCancel
        field.rightViewMode = .whileEditing
        field.font = Font.regular(15)
        field.returnKeyType = .search
        
        return field
    }()
    
    @objc func cancelAction() {
        searchField.endEditing(true)
        searchField.text = ""
        if isCustomer {
            self.getCustomers()
        } else {
            self.getCompanies()
        }
    }
    
    var searchBackGround = UIView()
    
    let arr = ["Customers", "Companies"]
    public var options: ContactFilterOptions? = nil
    var isCustomer: Bool = true
    var customersLimit = 20
    var companiesLimit = 20
    
    var loading = false
    var hasNextPage = false
    
    var customers = [CustomerList]() {
        didSet {
            tableView.reloadData()
        }
    }

    var companies = [CompanyList]() {
        didSet {
            tableView.reloadData()
        }
    }


    var customerAddButton: UIButton = {
        let button = UIButton()
        let image = UIImage.erxes(with: .adduser, textColor: .white)
        button.setBackgroundImage(image, for: .normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(addAction(sender:)), for: .touchUpInside)
        button.contentMode = .scaleAspectFit
        button.sizeToFit()
        return button
    }()

    var companyAddButton: UIButton = {
        let button = UIButton()
        let image = #imageLiteral(resourceName: "ic_addCompany")
        button.setBackgroundImage(image, for: .normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(addAction(sender:)), for: .touchUpInside)
        button.sizeToFit()
        return button
    }()

    var segmentedControl: UISegmentedControl = {
        let items = ["Customer", "Company"]
        let control = UISegmentedControl(items: items)
        control.frame = CGRect(x: 0, y: 0, width: 200, height: 23)
        control.layer.cornerRadius = 5.0

        let attributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white,
            NSAttributedStringKey.font: Font.regular(15)
        ]

        control.setTitleTextAttributes(attributes, for: .normal)
        control.setTitleTextAttributes(attributes, for: .selected)
        control.selectedSegmentIndex = 0

        return control
    }()

    var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(ContactCell.self, forCellReuseIdentifier: "ContactCell")
        tableView.rowHeight = 90
        tableView.tableFooterView = UIView()
        tableView.backgroundColor = .white
        tableView.separatorColor = UIColor.LIGHT_GRAY_COLOR
        tableView.contentInset = UIEdgeInsetsMake(44, 0, 0, 0)
        return tableView
    }()
    
    @objc func longPress(longPressGestureRecognizer: UILongPressGestureRecognizer) {
        
        if longPressGestureRecognizer.state == UIGestureRecognizerState.began {
            let touchPoint = longPressGestureRecognizer.location(in: self.tableView)
            if let indexPath = self.tableView.indexPathForRow(at: touchPoint) {
                self.showActionSheet(indexPath: indexPath)
            }
        }
    }
    
    func showActionSheet(indexPath:IndexPath) {
        let actionSheet = UIAlertController(title: "Connect to customer", message: "Please select connection method", preferredStyle: .actionSheet)
        if isCustomer {
            let customer = self.customers[indexPath.row]
            if !customer.primaryPhone.isNullOrEmpty {
                
                actionSheet.addAction(UIAlertAction(title: "Make a phone call", style: .default, handler: { (action) in

                    self.dialNumber(number: customer.primaryPhone!)
                }))
            }
           
            if customer.conversations?.count != 0 {
                actionSheet.addAction(UIAlertAction(title: "Go to conversation", style: .default, handler: { (action) in
                    self.dismiss(animated: true, completion: nil)
                    self.navigate(.chat(withId: (customer.conversations![0]?.id)!, title: ""))
                }))
            }
            
            actionSheet.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
        }
        if actionSheet.actions.count > 1{
            self.present(actionSheet, animated: true)
        }
    }
    
    func dialNumber(number : String) {
        
        if let url = URL(string: "tel://\(number)"),
            UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler:nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        } else {
            // add error message here
        }
    }

    @objc func toggleSegmentedControl(sender: UISegmentedControl) {

        self.segmentedControl.changeUnderlinePosition()
        
        let leftItem: UIBarButtonItem = {
            let barButtonItem = UIBarButtonItem()
            return barButtonItem
        }()

        if sender.selectedSegmentIndex == 0 {
            isCustomer = true
            customerAddButton.addTarget(self, action: #selector(addAction(sender:)), for: .touchUpInside)
            leftItem.customView = customerAddButton
            if self.customers.count == 0 {
                self.getCustomers()
            }
        } else {
            companyAddButton.addTarget(self, action: #selector(addAction(sender:)), for: .touchUpInside)
            leftItem.customView = companyAddButton
            isCustomer = false
            if self.companies.count == 0 {
                self.getCompanies()
            }
        }
        self.navigationItem.leftBarButtonItem? = leftItem
        self.tableView.reloadData()
    }

    func configureViews() {

        let rightItem: UIBarButtonItem = {
            var rightImage = #imageLiteral(resourceName: "ic_filter")

            rightImage = rightImage.withRenderingMode(.alwaysTemplate)
            let barButtomItem = UIBarButtonItem()
            let button = UIButton()
            button.contentMode = .scaleAspectFit
            button.setBackgroundImage(rightImage, for: .normal)
            button.tintColor = UIColor.white
            button.addTarget(self, action: #selector(navigateFilter), for: .touchUpInside)
            button.sizeToFit()
            barButtomItem.customView = button
            return barButtomItem
        }()
        let leftItem: UIBarButtonItem = {
            let barButtonItem = UIBarButtonItem()
            customerAddButton.addTarget(self, action: #selector(addAction(sender:)), for: .touchUpInside)
            barButtonItem.customView = self.customerAddButton
            return barButtonItem
        }()

        self.navigationItem.leftBarButtonItem = leftItem
        self.navigationItem.rightBarButtonItem = rightItem
        segmentedControl.addTarget(self, action: #selector(toggleSegmentedControl(sender:)), for: .valueChanged)
        segmentedControl.addUnderlineForSelectedSegment()
        self.navigationItem.titleView = segmentedControl

        tableView.delegate = self
        tableView.dataSource = self
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPress(longPressGestureRecognizer:)))
        tableView.addGestureRecognizer(longPress)
        self.view.addSubview(tableView)
         searchBackGround = UIView(frame: CGRect(x: 0, y: 0, width: Constants.SCREEN_WIDTH, height: 44))
        searchBackGround.backgroundColor = .ERXES_COLOR
        searchBackGround.addSubview(searchField)
//        tableView.tableHeaderView = searchBackGround
//        tableView.sectionHeaderHeight = 44
        searchField.delegate = self
        self.view.addSubview(searchBackGround)
        
    }

    func isEditing() {

    }

    @objc func changeEditMode(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        tableView.isEditing = sender.isSelected
    }

    @objc func addAction(sender: UIButton) {
        print("add click")
        if isCustomer {
            navigate(.customerProfile(_id: nil))
        } else {
            navigate(.companyProfile(id: nil))
        }

    }
    
    @objc func navigateFilter() {
        //        let nav = NavigationController()
        let controller = ContactFilterController(isCustomer: self.isCustomer)
        controller.delegate = self
        if self.options != nil {
            controller.filterOptions = self.options!
        }
        controller.modalPresentationStyle = .overFullScreen
        //        nav.viewControllers = [controller]
        self.present(controller, animated: true) {
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Contacts"
        self.view.backgroundColor = UIColor.white
        self.configureViews()

    }

    override func viewWillAppear(_ animated: Bool) {

        if isCustomer {

            getCustomers()
        } else {


            getCompanies()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        tableView.snp.makeConstraints { (make) in
//            make.left.equalTo(self.view.snp.left).offset(16)
//            make.right.equalTo(self.view.snp.right).inset(16)
            make.left.right.equalToSuperview()
            make.top.equalTo(self.topLayoutGuide.snp.bottom)
            make.bottom.equalTo(self.bottomLayoutGuide.snp.top)
        }

    }

    func deleteCustomer(index: Int) {
        let customer = customers[index]
        mutateDeleteCustomer(customerIds: [customer.id])
    }

    func mutateDeleteCustomer(customerIds: [String]) {
        let mutation = CustomersRemoveMutation(customerIds: customerIds)

        appnet.perform(mutation: mutation) { [weak self] result, error in
            self?.getCustomers()
        }
    }

    func deleteCompany(index: Int) {
        let company = companies[index]
        mutateDeleteCompany(companyIds: [company.id])
    }

    func mutateDeleteCompany(companyIds: [String]) {
        let mutation = CompaniesRemoveMutation(companyIds: companyIds)

        appnet.perform(mutation: mutation) { [weak self] result, error in
            self?.getCompanies()
        }
    }
}

extension ContactController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactCell
        if cell == nil {
            cell = ContactCell.init(style: .default, reuseIdentifier: "ContactCell")
        }
        cell?.topLabel.text = ""
        cell?.bottomLabel.text = ""
        cell?.taglistView.removeAllTags()
        if isCustomer {
            cell?.icon.image = nil
            cell?.icon.image = #imageLiteral(resourceName: "ic_avatar")
            let customer = customers[indexPath.row]
            var fullName = ""
            var contactInfo = ""
            var customerTags = [ErxesTagLabel]()
            if !customer.firstName.isNullOrEmpty && !customer.lastName.isNullOrEmpty {
                fullName = customer.firstName! + " " + customer.lastName!
            } else if customer.firstName.isNullOrEmpty && !customer.lastName.isNullOrEmpty {
                fullName = customer.lastName!
            } else if !customer.firstName.isNullOrEmpty && customer.lastName.isNullOrEmpty {
                fullName = customer.firstName!
            } else {
                fullName = "Unnamed"
            }

            if !customer.primaryEmail.isNullOrEmpty && !customer.primaryPhone.isNullOrEmpty {
                contactInfo = customer.primaryEmail!
            } else if !customer.primaryPhone.isNullOrEmpty && customer.primaryEmail.isNullOrEmpty {
                contactInfo = customer.primaryPhone!
            } else if customer.primaryPhone.isNullOrEmpty && !customer.primaryEmail.isNullOrEmpty {
                contactInfo = customer.primaryEmail!
            }
            if let tags = customer.getTags {
                for tag in tags {
                    let customerTag = ErxesTagLabel(title: (tag?.name!)!, backgroundColor: UIColor.init(hexString: (tag?.colorCode!)!)!)
                    customerTags.append(customerTag)
                }
            }

            cell?.topLabel.text = fullName
            cell?.bottomLabel.text = contactInfo
            if customerTags.count != 0 {
                cell?.taglistView.addTagViews(tagViews: customerTags)
            }
            if let twitter = customer.twitterData {
                print("twitter = ", twitter)
            }
            if let fb = customer.facebookData {
                print("fb = ", fb)
            }

            if fullName != "Unnamed" {
                if let avatar = customer.avatar {
                    cell?.icon.sd_setImage(with: URL(string: avatar))
                } else {
                    cell?.icon.setImageWithString(text: fullName.uppercased(), backGroundColor: .ERXES_COLOR, attributes: [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: Font.light(14)])
                }
            }

            } else {
                cell?.icon.image = #imageLiteral(resourceName: "ic_company")
                let company = companies[indexPath.row]
                if company.primaryName != nil {
                    cell?.topLabel.text = company.primaryName
                }
                if company.plan != nil {
                    cell?.bottomLabel.text = company.plan
                }
                if let avatar = company.avatar {
                    cell?.icon.sd_setImage(with: URL(string: avatar))
                } else {
                    cell?.icon.setImageWithString(text: (company.primaryName?.uppercased())!, backGroundColor: .ERXES_COLOR, attributes: [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: Font.light(14)])
                }
            
            }
        
//        if last row run pagination
        var count = 0
        if isCustomer {
            count = customers.count
        } else {
            count = companies.count
        }
        
        if hasNextPage, count == (indexPath.row + 1) {
            if isCustomer {
                customersLimit = customersLimit + 20
                self.getCustomers(limit: customersLimit)
            } else {
                companiesLimit = companiesLimit + 20
                self.getCompanies(limit: companiesLimit)
            }
        }
        
        return cell!
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        //            if editingStyle == .delete {
        //                if isCustomer {
        //                    deleteCustomer(index: indexPath.row)
        //                } else {
        //                    deleteCompany(index: indexPath.row)
        //                }
        //            }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isCustomer {
            let customer = customers[indexPath.row]
            //                navigate(.customerProfile(_id: customer.id))
            var name = "N/A"
            if !customer.firstName.isNullOrEmpty && !customer.lastName.isNullOrEmpty {
                name = customer.firstName!
            } else if customer.firstName.isNullOrEmpty && !customer.lastName.isNullOrEmpty {
                name = customer.lastName!
            } else if !customer.firstName.isNullOrEmpty && customer.lastName.isNullOrEmpty {
                name = customer.firstName!
            }
            var email = ""
            if !customer.primaryEmail.isNullOrEmpty {
                email = customer.primaryEmail!
            }
            
            navigate(.contactDetail(id: customer.id, name: name, isCompany: false))
        } else {
            let company = companies[indexPath.row]
            
            navigate(.contactDetail(id: company.id, name: company.primaryName!, isCompany: true))
        }
    }
}

extension ContactController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isCustomer {
            return customers.count
        } else {
            return companies.count
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.view.endEditing(true)
        let offsetY = -(scrollView.contentOffset.y + scrollView.contentInset.top)
        if offsetY > 0 {
            let height:CGFloat = 44
            searchBackGround.frame.size.height = height + offsetY
        }
    }
}

extension ContactController: ContactFilterDelegate {
    func passFilterOptions(options: ContactFilterOptions) {
        self.options = options
        if isCustomer {
            self.getCustomers(limit: self.customersLimit)
        } else {
            self.getCompanies(limit: self.companiesLimit)
        }
    }
}


extension ContactController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if isCustomer {
            self.getCustomers()
        } else {
            self.getCompanies()
        }
        return true
    }
}
