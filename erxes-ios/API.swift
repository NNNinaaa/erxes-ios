//  This file was automatically generated and should not be edited.

import Apollo

public struct AttachmentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(url: String, name: String, type: String, size: Optional<Double?> = nil) {
    graphQLMap = ["url": url, "name": name, "type": type, "size": size]
  }

  public var url: String {
    get {
      return graphQLMap["url"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "url")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var type: String {
    get {
      return graphQLMap["type"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var size: Optional<Double?> {
    get {
      return graphQLMap["size"] as! Optional<Double?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct EmailSignature: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(brandId: Optional<String?> = nil, signature: Optional<String?> = nil) {
    graphQLMap = ["brandId": brandId, "signature": signature]
  }

  public var brandId: Optional<String?> {
    get {
      return graphQLMap["brandId"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "brandId")
    }
  }

  public var signature: Optional<String?> {
    get {
      return graphQLMap["signature"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "signature")
    }
  }
}

public struct UserDetails: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(avatar: Optional<String?> = nil, fullName: Optional<String?> = nil, shortName: Optional<String?> = nil, position: Optional<String?> = nil, location: Optional<String?> = nil, description: Optional<String?> = nil) {
    graphQLMap = ["avatar": avatar, "fullName": fullName, "shortName": shortName, "position": position, "location": location, "description": description]
  }

  public var avatar: Optional<String?> {
    get {
      return graphQLMap["avatar"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "avatar")
    }
  }

  public var fullName: Optional<String?> {
    get {
      return graphQLMap["fullName"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fullName")
    }
  }

  public var shortName: Optional<String?> {
    get {
      return graphQLMap["shortName"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shortName")
    }
  }

  public var position: Optional<String?> {
    get {
      return graphQLMap["position"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "position")
    }
  }

  public var location: Optional<String?> {
    get {
      return graphQLMap["location"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct UserLinks: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(linkedIn: Optional<String?> = nil, twitter: Optional<String?> = nil, facebook: Optional<String?> = nil, youtube: Optional<String?> = nil, github: Optional<String?> = nil, website: Optional<String?> = nil) {
    graphQLMap = ["linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "youtube": youtube, "github": github, "website": website]
  }

  public var linkedIn: Optional<String?> {
    get {
      return graphQLMap["linkedIn"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "linkedIn")
    }
  }

  public var twitter: Optional<String?> {
    get {
      return graphQLMap["twitter"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "twitter")
    }
  }

  public var facebook: Optional<String?> {
    get {
      return graphQLMap["facebook"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "facebook")
    }
  }

  public var youtube: Optional<String?> {
    get {
      return graphQLMap["youtube"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "youtube")
    }
  }

  public var github: Optional<String?> {
    get {
      return graphQLMap["github"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "github")
    }
  }

  public var website: Optional<String?> {
    get {
      return graphQLMap["website"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "website")
    }
  }
}

public final class LoginMutation: GraphQLMutation {
  public static let operationString =
    "mutation Login($email: String!, $password: String!) {\n  login(email: $email, password: $password)\n}"

  public var email: String
  public var password: String

  public init(email: String, password: String) {
    self.email = email
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["email": email, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("login", arguments: ["email": GraphQLVariable("email"), "password": GraphQLVariable("password")], type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(login: String? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "login": login])
    }

    public var login: String? {
      get {
        return snapshot["login"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "login")
      }
    }
  }
}

public final class CurrentUserQuery: GraphQLQuery {
  public static let operationString =
    "query currentUser {\n  currentUser {\n    __typename\n    _id\n    username\n    email\n    details {\n      __typename\n      avatar\n      fullName\n      position\n      location\n      description\n    }\n    links {\n      __typename\n      linkedIn\n      twitter\n      facebook\n      youtube\n      github\n      website\n    }\n    emailSignatures\n    getNotificationByEmail\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("currentUser", type: .object(CurrentUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(currentUser: CurrentUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "currentUser": currentUser.flatMap { (value: CurrentUser) -> Snapshot in value.snapshot }])
    }

    public var currentUser: CurrentUser? {
      get {
        return (snapshot["currentUser"] as? Snapshot).flatMap { CurrentUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "currentUser")
      }
    }

    public struct CurrentUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("details", type: .object(Detail.selections)),
        GraphQLField("links", type: .object(Link.selections)),
        GraphQLField("emailSignatures", type: .scalar(JSON.self)),
        GraphQLField("getNotificationByEmail", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String? = nil, email: String? = nil, details: Detail? = nil, links: Link? = nil, emailSignatures: JSON? = nil, getNotificationByEmail: Bool? = nil) {
        self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "email": email, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }, "emailSignatures": emailSignatures, "getNotificationByEmail": getNotificationByEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var username: String? {
        get {
          return snapshot["username"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var details: Detail? {
        get {
          return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "details")
        }
      }

      public var links: Link? {
        get {
          return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "links")
        }
      }

      public var emailSignatures: JSON? {
        get {
          return snapshot["emailSignatures"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "emailSignatures")
        }
      }

      public var getNotificationByEmail: Bool? {
        get {
          return snapshot["getNotificationByEmail"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "getNotificationByEmail")
        }
      }

      public struct Detail: GraphQLSelectionSet {
        public static let possibleTypes = ["UserDetailsType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("fullName", type: .scalar(String.self)),
          GraphQLField("position", type: .scalar(String.self)),
          GraphQLField("location", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: String? = nil, fullName: String? = nil, position: String? = nil, location: String? = nil, description: String? = nil) {
          self.init(snapshot: ["__typename": "UserDetailsType", "avatar": avatar, "fullName": fullName, "position": position, "location": location, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }

        public var fullName: String? {
          get {
            return snapshot["fullName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "fullName")
          }
        }

        public var position: String? {
          get {
            return snapshot["position"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "position")
          }
        }

        public var location: String? {
          get {
            return snapshot["location"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "location")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes = ["UserLinksType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("linkedIn", type: .scalar(String.self)),
          GraphQLField("twitter", type: .scalar(String.self)),
          GraphQLField("facebook", type: .scalar(String.self)),
          GraphQLField("youtube", type: .scalar(String.self)),
          GraphQLField("github", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, youtube: String? = nil, github: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "UserLinksType", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "youtube": youtube, "github": github, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var linkedIn: String? {
          get {
            return snapshot["linkedIn"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "linkedIn")
          }
        }

        public var twitter: String? {
          get {
            return snapshot["twitter"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "twitter")
          }
        }

        public var facebook: String? {
          get {
            return snapshot["facebook"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "facebook")
          }
        }

        public var youtube: String? {
          get {
            return snapshot["youtube"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "youtube")
          }
        }

        public var github: String? {
          get {
            return snapshot["github"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "github")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }
      }
    }
  }
}

public final class ConversationMessageAddMutation: GraphQLMutation {
  public static let operationString =
    "mutation ConversationMessageAdd($conversationId: String!, $content: String, $attachments: [AttachmentInput], $internal: Boolean, $mentionedUserIds: [String]) {\n  conversationMessageAdd(conversationId: $conversationId, content: $content, attachments: $attachments, internal: $internal, mentionedUserIds: $mentionedUserIds) {\n    __typename\n    _id\n  }\n}"

  public var conversationId: String
  public var content: String?
  public var attachments: [AttachmentInput?]?
  public var `internal`: Bool?
  public var mentionedUserIds: [String?]?

  public init(conversationId: String, content: String? = nil, attachments: [AttachmentInput?]? = nil, `internal`: Bool? = nil, mentionedUserIds: [String?]? = nil) {
    self.conversationId = conversationId
    self.content = content
    self.attachments = attachments
    self.internal = `internal`
    self.mentionedUserIds = mentionedUserIds
  }

  public var variables: GraphQLMap? {
    return ["conversationId": conversationId, "content": content, "attachments": attachments, "internal": `internal`, "mentionedUserIds": mentionedUserIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationMessageAdd", arguments: ["conversationId": GraphQLVariable("conversationId"), "content": GraphQLVariable("content"), "attachments": GraphQLVariable("attachments"), "internal": GraphQLVariable("internal"), "mentionedUserIds": GraphQLVariable("mentionedUserIds")], type: .object(ConversationMessageAdd.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationMessageAdd: ConversationMessageAdd? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "conversationMessageAdd": conversationMessageAdd.flatMap { (value: ConversationMessageAdd) -> Snapshot in value.snapshot }])
    }

    public var conversationMessageAdd: ConversationMessageAdd? {
      get {
        return (snapshot["conversationMessageAdd"] as? Snapshot).flatMap { ConversationMessageAdd(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "conversationMessageAdd")
      }
    }

    public struct ConversationMessageAdd: GraphQLSelectionSet {
      public static let possibleTypes = ["ConversationMessage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "ConversationMessage", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class ConversationDetailQuery: GraphQLQuery {
  public static let operationString =
    "query ConversationDetail($_id: String!) {\n  conversationDetail(_id: $_id) {\n    __typename\n    messages {\n      __typename\n      ...MessageDetail\n    }\n    customer {\n      __typename\n      _id\n      firstName\n      lastName\n      avatar\n      isUser\n    }\n    integration {\n      __typename\n      brand {\n        __typename\n        _id\n        name\n      }\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(MessageDetail.fragmentString) }

  public var _id: String

  public init(_id: String) {
    self._id = _id
  }

  public var variables: GraphQLMap? {
    return ["_id": _id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationDetail", arguments: ["_id": GraphQLVariable("_id")], type: .object(ConversationDetail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationDetail: ConversationDetail? = nil) {
      self.init(snapshot: ["__typename": "Query", "conversationDetail": conversationDetail.flatMap { (value: ConversationDetail) -> Snapshot in value.snapshot }])
    }

    public var conversationDetail: ConversationDetail? {
      get {
        return (snapshot["conversationDetail"] as? Snapshot).flatMap { ConversationDetail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "conversationDetail")
      }
    }

    public struct ConversationDetail: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .list(.object(Message.selections))),
        GraphQLField("customer", type: .object(Customer.selections)),
        GraphQLField("integration", type: .object(Integration.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messages: [Message?]? = nil, customer: Customer? = nil, integration: Integration? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "messages": messages.flatMap { (value: [Message?]) -> [Snapshot?] in value.map { (value: Message?) -> Snapshot? in value.flatMap { (value: Message) -> Snapshot in value.snapshot } } }, "customer": customer.flatMap { (value: Customer) -> Snapshot in value.snapshot }, "integration": integration.flatMap { (value: Integration) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var messages: [Message?]? {
        get {
          return (snapshot["messages"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Message?] in value.map { (value: Snapshot?) -> Message? in value.flatMap { (value: Snapshot) -> Message in Message(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Message?]) -> [Snapshot?] in value.map { (value: Message?) -> Snapshot? in value.flatMap { (value: Message) -> Snapshot in value.snapshot } } }, forKey: "messages")
        }
      }

      public var customer: Customer? {
        get {
          return (snapshot["customer"] as? Snapshot).flatMap { Customer(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "customer")
        }
      }

      public var integration: Integration? {
        get {
          return (snapshot["integration"] as? Snapshot).flatMap { Integration(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "integration")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationMessage"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("attachments", type: .list(.object(Attachment.selections))),
          GraphQLField("formWidgetData", type: .scalar(JSON.self)),
          GraphQLField("conversationId", type: .scalar(String.self)),
          GraphQLField("customerId", type: .scalar(String.self)),
          GraphQLField("userId", type: .scalar(String.self)),
          GraphQLField("internal", type: .scalar(Bool.self)),
          GraphQLField("createdAt", type: .scalar(SDate.self)),
          GraphQLField("user", type: .object(User.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, content: String? = nil, attachments: [Attachment?]? = nil, formWidgetData: JSON? = nil, conversationId: String? = nil, customerId: String? = nil, userId: String? = nil, `internal`: Bool? = nil, createdAt: SDate? = nil, user: User? = nil) {
          self.init(snapshot: ["__typename": "ConversationMessage", "_id": id, "content": content, "attachments": attachments.flatMap { (value: [Attachment?]) -> [Snapshot?] in value.map { (value: Attachment?) -> Snapshot? in value.flatMap { (value: Attachment) -> Snapshot in value.snapshot } } }, "formWidgetData": formWidgetData, "conversationId": conversationId, "customerId": customerId, "userId": userId, "internal": `internal`, "createdAt": createdAt, "user": user.flatMap { (value: User) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var attachments: [Attachment?]? {
          get {
            return (snapshot["attachments"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Attachment?] in value.map { (value: Snapshot?) -> Attachment? in value.flatMap { (value: Snapshot) -> Attachment in Attachment(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Attachment?]) -> [Snapshot?] in value.map { (value: Attachment?) -> Snapshot? in value.flatMap { (value: Attachment) -> Snapshot in value.snapshot } } }, forKey: "attachments")
          }
        }

        public var formWidgetData: JSON? {
          get {
            return snapshot["formWidgetData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "formWidgetData")
          }
        }

        public var conversationId: String? {
          get {
            return snapshot["conversationId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversationId")
          }
        }

        public var customerId: String? {
          get {
            return snapshot["customerId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "customerId")
          }
        }

        public var userId: String? {
          get {
            return snapshot["userId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var `internal`: Bool? {
          get {
            return snapshot["internal"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "internal")
          }
        }

        public var createdAt: SDate? {
          get {
            return snapshot["createdAt"] as? SDate
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var messageDetail: MessageDetail {
            get {
              return MessageDetail(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        public struct Attachment: GraphQLSelectionSet {
          public static let possibleTypes = ["Attachment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("size", type: .scalar(Double.self)),
            GraphQLField("type", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(url: String, name: String, size: Double? = nil, type: String) {
            self.init(snapshot: ["__typename": "Attachment", "url": url, "name": name, "size": size, "type": type])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var url: String {
            get {
              return snapshot["url"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "url")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var size: Double? {
            get {
              return snapshot["size"] as? Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "size")
            }
          }

          public var type: String {
            get {
              return snapshot["type"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("username", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("role", type: .scalar(String.self)),
            GraphQLField("getNotificationByEmail", type: .scalar(Bool.self)),
            GraphQLField("details", type: .object(Detail.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, username: String? = nil, email: String? = nil, role: String? = nil, getNotificationByEmail: Bool? = nil, details: Detail? = nil) {
            self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "email": email, "role": role, "getNotificationByEmail": getNotificationByEmail, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var username: String? {
            get {
              return snapshot["username"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }

          public var email: String? {
            get {
              return snapshot["email"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var role: String? {
            get {
              return snapshot["role"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var getNotificationByEmail: Bool? {
            get {
              return snapshot["getNotificationByEmail"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "getNotificationByEmail")
            }
          }

          public var details: Detail? {
            get {
              return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "details")
            }
          }

          public struct Detail: GraphQLSelectionSet {
            public static let possibleTypes = ["UserDetailsType"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("avatar", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(avatar: String? = nil) {
              self.init(snapshot: ["__typename": "UserDetailsType", "avatar": avatar])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var avatar: String? {
              get {
                return snapshot["avatar"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "avatar")
              }
            }
          }
        }
      }

      public struct Customer: GraphQLSelectionSet {
        public static let possibleTypes = ["Customer"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .scalar(String.self)),
          GraphQLField("lastName", type: .scalar(String.self)),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("isUser", type: .scalar(Bool.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, isUser: Bool? = nil) {
          self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "isUser": isUser])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["firstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["lastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }

        public var isUser: Bool? {
          get {
            return snapshot["isUser"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isUser")
          }
        }
      }

      public struct Integration: GraphQLSelectionSet {
        public static let possibleTypes = ["Integration"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("brand", type: .object(Brand.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(brand: Brand? = nil) {
          self.init(snapshot: ["__typename": "Integration", "brand": brand.flatMap { (value: Brand) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var brand: Brand? {
          get {
            return (snapshot["brand"] as? Snapshot).flatMap { Brand(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "brand")
          }
        }

        public struct Brand: GraphQLSelectionSet {
          public static let possibleTypes = ["Brand"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, name: String? = nil) {
            self.init(snapshot: ["__typename": "Brand", "_id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class ResponseTemplatesQuery: GraphQLQuery {
  public static let operationString =
    "query ResponseTemplates {\n  responseTemplates {\n    __typename\n    _id\n    name\n    brandId\n    content\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("responseTemplates", type: .list(.object(ResponseTemplate.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(responseTemplates: [ResponseTemplate?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "responseTemplates": responseTemplates.flatMap { (value: [ResponseTemplate?]) -> [Snapshot?] in value.map { (value: ResponseTemplate?) -> Snapshot? in value.flatMap { (value: ResponseTemplate) -> Snapshot in value.snapshot } } }])
    }

    public var responseTemplates: [ResponseTemplate?]? {
      get {
        return (snapshot["responseTemplates"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [ResponseTemplate?] in value.map { (value: Snapshot?) -> ResponseTemplate? in value.flatMap { (value: Snapshot) -> ResponseTemplate in ResponseTemplate(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [ResponseTemplate?]) -> [Snapshot?] in value.map { (value: ResponseTemplate?) -> Snapshot? in value.flatMap { (value: ResponseTemplate) -> Snapshot in value.snapshot } } }, forKey: "responseTemplates")
      }
    }

    public struct ResponseTemplate: GraphQLSelectionSet {
      public static let possibleTypes = ["ResponseTemplate"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("brandId", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String, brandId: String, content: String? = nil) {
        self.init(snapshot: ["__typename": "ResponseTemplate", "_id": id, "name": name, "brandId": brandId, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var brandId: String {
        get {
          return snapshot["brandId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "brandId")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class CompaniesAddMutation: GraphQLMutation {
  public static let operationString =
    "mutation companiesAdd($names: [String], $avatar: String, $primaryName: String, $size: Int, $industry: String, $parentCompanyId: String, $emails: [String], $primaryEmail: String, $ownerId: String, $phones: [String], $primaryPhone: String, $leadStatus: String, $lifecycleState: String, $businessType: String, $description: String, $doNotDisturb: String, $links: JSON, $customFieldsData: JSON) {\n  companiesAdd(names: $names, avatar: $avatar, primaryName: $primaryName, size: $size, industry: $industry, parentCompanyId: $parentCompanyId, emails: $emails, primaryEmail: $primaryEmail, ownerId: $ownerId, phones: $phones, primaryPhone: $primaryPhone, leadStatus: $leadStatus, lifecycleState: $lifecycleState, businessType: $businessType, description: $description, doNotDisturb: $doNotDisturb, links: $links, customFieldsData: $customFieldsData) {\n    __typename\n    _id\n  }\n}"

  public var names: [String?]?
  public var avatar: String?
  public var primaryName: String?
  public var size: Int?
  public var industry: String?
  public var parentCompanyId: String?
  public var emails: [String?]?
  public var primaryEmail: String?
  public var ownerId: String?
  public var phones: [String?]?
  public var primaryPhone: String?
  public var leadStatus: String?
  public var lifecycleState: String?
  public var businessType: String?
  public var description: String?
  public var doNotDisturb: String?
  public var links: JSON?
  public var customFieldsData: JSON?

  public init(names: [String?]? = nil, avatar: String? = nil, primaryName: String? = nil, size: Int? = nil, industry: String? = nil, parentCompanyId: String? = nil, emails: [String?]? = nil, primaryEmail: String? = nil, ownerId: String? = nil, phones: [String?]? = nil, primaryPhone: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, businessType: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: JSON? = nil, customFieldsData: JSON? = nil) {
    self.names = names
    self.avatar = avatar
    self.primaryName = primaryName
    self.size = size
    self.industry = industry
    self.parentCompanyId = parentCompanyId
    self.emails = emails
    self.primaryEmail = primaryEmail
    self.ownerId = ownerId
    self.phones = phones
    self.primaryPhone = primaryPhone
    self.leadStatus = leadStatus
    self.lifecycleState = lifecycleState
    self.businessType = businessType
    self.description = description
    self.doNotDisturb = doNotDisturb
    self.links = links
    self.customFieldsData = customFieldsData
  }

  public var variables: GraphQLMap? {
    return ["names": names, "avatar": avatar, "primaryName": primaryName, "size": size, "industry": industry, "parentCompanyId": parentCompanyId, "emails": emails, "primaryEmail": primaryEmail, "ownerId": ownerId, "phones": phones, "primaryPhone": primaryPhone, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "businessType": businessType, "description": description, "doNotDisturb": doNotDisturb, "links": links, "customFieldsData": customFieldsData]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("companiesAdd", arguments: ["names": GraphQLVariable("names"), "avatar": GraphQLVariable("avatar"), "primaryName": GraphQLVariable("primaryName"), "size": GraphQLVariable("size"), "industry": GraphQLVariable("industry"), "parentCompanyId": GraphQLVariable("parentCompanyId"), "emails": GraphQLVariable("emails"), "primaryEmail": GraphQLVariable("primaryEmail"), "ownerId": GraphQLVariable("ownerId"), "phones": GraphQLVariable("phones"), "primaryPhone": GraphQLVariable("primaryPhone"), "leadStatus": GraphQLVariable("leadStatus"), "lifecycleState": GraphQLVariable("lifecycleState"), "businessType": GraphQLVariable("businessType"), "description": GraphQLVariable("description"), "doNotDisturb": GraphQLVariable("doNotDisturb"), "links": GraphQLVariable("links"), "customFieldsData": GraphQLVariable("customFieldsData")], type: .object(CompaniesAdd.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(companiesAdd: CompaniesAdd? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "companiesAdd": companiesAdd.flatMap { (value: CompaniesAdd) -> Snapshot in value.snapshot }])
    }

    public var companiesAdd: CompaniesAdd? {
      get {
        return (snapshot["companiesAdd"] as? Snapshot).flatMap { CompaniesAdd(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "companiesAdd")
      }
    }

    public struct CompaniesAdd: GraphQLSelectionSet {
      public static let possibleTypes = ["Company"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Company", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class CompaniesEditMutation: GraphQLMutation {
  public static let operationString =
    "mutation companiesEdit($_id: String!, $names: [String], $avatar: String, $primaryName: String, $size: Int, $industry: String, $parentCompanyId: String, $emails: [String], $primaryEmail: String, $ownerId: String, $phones: [String], $primaryPhone: String, $leadStatus: String, $lifecycleState: String, $businessType: String, $description: String, $doNotDisturb: String, $links: JSON, $customFieldsData: JSON) {\n  companiesEdit(_id: $_id, names: $names, avatar: $avatar, primaryName: $primaryName, size: $size, industry: $industry, parentCompanyId: $parentCompanyId, emails: $emails, primaryEmail: $primaryEmail, ownerId: $ownerId, phones: $phones, primaryPhone: $primaryPhone, leadStatus: $leadStatus, lifecycleState: $lifecycleState, businessType: $businessType, description: $description, doNotDisturb: $doNotDisturb, links: $links, customFieldsData: $customFieldsData) {\n    __typename\n    _id\n  }\n}"

  public var _id: String
  public var names: [String?]?
  public var avatar: String?
  public var primaryName: String?
  public var size: Int?
  public var industry: String?
  public var parentCompanyId: String?
  public var emails: [String?]?
  public var primaryEmail: String?
  public var ownerId: String?
  public var phones: [String?]?
  public var primaryPhone: String?
  public var leadStatus: String?
  public var lifecycleState: String?
  public var businessType: String?
  public var description: String?
  public var doNotDisturb: String?
  public var links: JSON?
  public var customFieldsData: JSON?

  public init(_id: String, names: [String?]? = nil, avatar: String? = nil, primaryName: String? = nil, size: Int? = nil, industry: String? = nil, parentCompanyId: String? = nil, emails: [String?]? = nil, primaryEmail: String? = nil, ownerId: String? = nil, phones: [String?]? = nil, primaryPhone: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, businessType: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: JSON? = nil, customFieldsData: JSON? = nil) {
    self._id = _id
    self.names = names
    self.avatar = avatar
    self.primaryName = primaryName
    self.size = size
    self.industry = industry
    self.parentCompanyId = parentCompanyId
    self.emails = emails
    self.primaryEmail = primaryEmail
    self.ownerId = ownerId
    self.phones = phones
    self.primaryPhone = primaryPhone
    self.leadStatus = leadStatus
    self.lifecycleState = lifecycleState
    self.businessType = businessType
    self.description = description
    self.doNotDisturb = doNotDisturb
    self.links = links
    self.customFieldsData = customFieldsData
  }

  public var variables: GraphQLMap? {
    return ["_id": _id, "names": names, "avatar": avatar, "primaryName": primaryName, "size": size, "industry": industry, "parentCompanyId": parentCompanyId, "emails": emails, "primaryEmail": primaryEmail, "ownerId": ownerId, "phones": phones, "primaryPhone": primaryPhone, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "businessType": businessType, "description": description, "doNotDisturb": doNotDisturb, "links": links, "customFieldsData": customFieldsData]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("companiesEdit", arguments: ["_id": GraphQLVariable("_id"), "names": GraphQLVariable("names"), "avatar": GraphQLVariable("avatar"), "primaryName": GraphQLVariable("primaryName"), "size": GraphQLVariable("size"), "industry": GraphQLVariable("industry"), "parentCompanyId": GraphQLVariable("parentCompanyId"), "emails": GraphQLVariable("emails"), "primaryEmail": GraphQLVariable("primaryEmail"), "ownerId": GraphQLVariable("ownerId"), "phones": GraphQLVariable("phones"), "primaryPhone": GraphQLVariable("primaryPhone"), "leadStatus": GraphQLVariable("leadStatus"), "lifecycleState": GraphQLVariable("lifecycleState"), "businessType": GraphQLVariable("businessType"), "description": GraphQLVariable("description"), "doNotDisturb": GraphQLVariable("doNotDisturb"), "links": GraphQLVariable("links"), "customFieldsData": GraphQLVariable("customFieldsData")], type: .object(CompaniesEdit.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(companiesEdit: CompaniesEdit? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "companiesEdit": companiesEdit.flatMap { (value: CompaniesEdit) -> Snapshot in value.snapshot }])
    }

    public var companiesEdit: CompaniesEdit? {
      get {
        return (snapshot["companiesEdit"] as? Snapshot).flatMap { CompaniesEdit(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "companiesEdit")
      }
    }

    public struct CompaniesEdit: GraphQLSelectionSet {
      public static let possibleTypes = ["Company"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Company", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class CompanyDetailQuery: GraphQLQuery {
  public static let operationString =
    "query CompanyDetail($id: String!) {\n  companyDetail(_id: $id) {\n    __typename\n    ...CompanyObj\n  }\n}"

  public static var requestString: String { return operationString.appending(CompanyObj.fragmentString).appending(UserData.fragmentString).appending(CompanyList.fragmentString) }

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("companyDetail", arguments: ["_id": GraphQLVariable("id")], type: .object(CompanyDetail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(companyDetail: CompanyDetail? = nil) {
      self.init(snapshot: ["__typename": "Query", "companyDetail": companyDetail.flatMap { (value: CompanyDetail) -> Snapshot in value.snapshot }])
    }

    public var companyDetail: CompanyDetail? {
      get {
        return (snapshot["companyDetail"] as? Snapshot).flatMap { CompanyDetail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "companyDetail")
      }
    }

    public struct CompanyDetail: GraphQLSelectionSet {
      public static let possibleTypes = ["Company"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .scalar(SDate.self)),
        GraphQLField("modifiedAt", type: .scalar(SDate.self)),
        GraphQLField("avatar", type: .scalar(String.self)),
        GraphQLField("primaryName", type: .scalar(String.self)),
        GraphQLField("names", type: .list(.scalar(String.self))),
        GraphQLField("size", type: .scalar(Int.self)),
        GraphQLField("industry", type: .scalar(String.self)),
        GraphQLField("plan", type: .scalar(String.self)),
        GraphQLField("parentCompanyId", type: .scalar(String.self)),
        GraphQLField("emails", type: .list(.scalar(String.self))),
        GraphQLField("primaryEmail", type: .scalar(String.self)),
        GraphQLField("ownerId", type: .scalar(String.self)),
        GraphQLField("phones", type: .list(.scalar(String.self))),
        GraphQLField("primaryPhone", type: .scalar(String.self)),
        GraphQLField("leadStatus", type: .scalar(String.self)),
        GraphQLField("lifecycleState", type: .scalar(String.self)),
        GraphQLField("businessType", type: .scalar(String.self)),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("doNotDisturb", type: .scalar(String.self)),
        GraphQLField("links", type: .object(Link.selections)),
        GraphQLField("owner", type: .object(Owner.selections)),
        GraphQLField("parentCompany", type: .object(ParentCompany.selections)),
        GraphQLField("customFieldsData", type: .scalar(JSON.self)),
        GraphQLField("tagIds", type: .list(.scalar(String.self))),
        GraphQLField("getTags", type: .list(.object(GetTag.selections))),
        GraphQLField("customers", type: .list(.object(Customer.selections))),
        GraphQLField("deals", type: .list(.object(Deal.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, createdAt: SDate? = nil, modifiedAt: SDate? = nil, avatar: String? = nil, primaryName: String? = nil, names: [String?]? = nil, size: Int? = nil, industry: String? = nil, plan: String? = nil, parentCompanyId: String? = nil, emails: [String?]? = nil, primaryEmail: String? = nil, ownerId: String? = nil, phones: [String?]? = nil, primaryPhone: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, businessType: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: Link? = nil, owner: Owner? = nil, parentCompany: ParentCompany? = nil, customFieldsData: JSON? = nil, tagIds: [String?]? = nil, getTags: [GetTag?]? = nil, customers: [Customer?]? = nil, deals: [Deal?]? = nil) {
        self.init(snapshot: ["__typename": "Company", "_id": id, "createdAt": createdAt, "modifiedAt": modifiedAt, "avatar": avatar, "primaryName": primaryName, "names": names, "size": size, "industry": industry, "plan": plan, "parentCompanyId": parentCompanyId, "emails": emails, "primaryEmail": primaryEmail, "ownerId": ownerId, "phones": phones, "primaryPhone": primaryPhone, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "businessType": businessType, "description": description, "doNotDisturb": doNotDisturb, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }, "owner": owner.flatMap { (value: Owner) -> Snapshot in value.snapshot }, "parentCompany": parentCompany.flatMap { (value: ParentCompany) -> Snapshot in value.snapshot }, "customFieldsData": customFieldsData, "tagIds": tagIds, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, "customers": customers.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, "deals": deals.flatMap { (value: [Deal?]) -> [Snapshot?] in value.map { (value: Deal?) -> Snapshot? in value.flatMap { (value: Deal) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var createdAt: SDate? {
        get {
          return snapshot["createdAt"] as? SDate
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var modifiedAt: SDate? {
        get {
          return snapshot["modifiedAt"] as? SDate
        }
        set {
          snapshot.updateValue(newValue, forKey: "modifiedAt")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }

      public var primaryName: String? {
        get {
          return snapshot["primaryName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryName")
        }
      }

      public var names: [String?]? {
        get {
          return snapshot["names"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "names")
        }
      }

      public var size: Int? {
        get {
          return snapshot["size"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "size")
        }
      }

      public var industry: String? {
        get {
          return snapshot["industry"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "industry")
        }
      }

      public var plan: String? {
        get {
          return snapshot["plan"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "plan")
        }
      }

      public var parentCompanyId: String? {
        get {
          return snapshot["parentCompanyId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "parentCompanyId")
        }
      }

      public var emails: [String?]? {
        get {
          return snapshot["emails"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "emails")
        }
      }

      public var primaryEmail: String? {
        get {
          return snapshot["primaryEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryEmail")
        }
      }

      public var ownerId: String? {
        get {
          return snapshot["ownerId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var phones: [String?]? {
        get {
          return snapshot["phones"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "phones")
        }
      }

      public var primaryPhone: String? {
        get {
          return snapshot["primaryPhone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryPhone")
        }
      }

      public var leadStatus: String? {
        get {
          return snapshot["leadStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "leadStatus")
        }
      }

      public var lifecycleState: String? {
        get {
          return snapshot["lifecycleState"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lifecycleState")
        }
      }

      public var businessType: String? {
        get {
          return snapshot["businessType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "businessType")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var doNotDisturb: String? {
        get {
          return snapshot["doNotDisturb"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doNotDisturb")
        }
      }

      public var links: Link? {
        get {
          return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "links")
        }
      }

      public var owner: Owner? {
        get {
          return (snapshot["owner"] as? Snapshot).flatMap { Owner(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "owner")
        }
      }

      public var parentCompany: ParentCompany? {
        get {
          return (snapshot["parentCompany"] as? Snapshot).flatMap { ParentCompany(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "parentCompany")
        }
      }

      public var customFieldsData: JSON? {
        get {
          return snapshot["customFieldsData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "customFieldsData")
        }
      }

      public var tagIds: [String?]? {
        get {
          return snapshot["tagIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tagIds")
        }
      }

      public var getTags: [GetTag?]? {
        get {
          return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
        }
      }

      public var customers: [Customer?]? {
        get {
          return (snapshot["customers"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Customer?] in value.map { (value: Snapshot?) -> Customer? in value.flatMap { (value: Snapshot) -> Customer in Customer(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, forKey: "customers")
        }
      }

      public var deals: [Deal?]? {
        get {
          return (snapshot["deals"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Deal?] in value.map { (value: Snapshot?) -> Deal? in value.flatMap { (value: Snapshot) -> Deal in Deal(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Deal?]) -> [Snapshot?] in value.map { (value: Deal?) -> Snapshot? in value.flatMap { (value: Deal) -> Snapshot in value.snapshot } } }, forKey: "deals")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var companyObj: CompanyObj {
          get {
            return CompanyObj(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes = ["CompanyLinks"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("linkedIn", type: .scalar(String.self)),
          GraphQLField("twitter", type: .scalar(String.self)),
          GraphQLField("facebook", type: .scalar(String.self)),
          GraphQLField("github", type: .scalar(String.self)),
          GraphQLField("youtube", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, github: String? = nil, youtube: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "CompanyLinks", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "github": github, "youtube": youtube, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var linkedIn: String? {
          get {
            return snapshot["linkedIn"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "linkedIn")
          }
        }

        public var twitter: String? {
          get {
            return snapshot["twitter"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "twitter")
          }
        }

        public var facebook: String? {
          get {
            return snapshot["facebook"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "facebook")
          }
        }

        public var github: String? {
          get {
            return snapshot["github"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "github")
          }
        }

        public var youtube: String? {
          get {
            return snapshot["youtube"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "youtube")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }
      }

      public struct Owner: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("details", type: .object(Detail.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String? = nil, details: Detail? = nil) {
          self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var username: String? {
          get {
            return snapshot["username"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var details: Detail? {
          get {
            return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "details")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var userData: UserData {
            get {
              return UserData(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        public struct Detail: GraphQLSelectionSet {
          public static let possibleTypes = ["UserDetailsType"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("fullName", type: .scalar(String.self)),
            GraphQLField("avatar", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(fullName: String? = nil, avatar: String? = nil) {
            self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName, "avatar": avatar])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fullName: String? {
            get {
              return snapshot["fullName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "fullName")
            }
          }

          public var avatar: String? {
            get {
              return snapshot["avatar"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "avatar")
            }
          }
        }
      }

      public struct ParentCompany: GraphQLSelectionSet {
        public static let possibleTypes = ["Company"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("primaryName", type: .scalar(String.self)),
          GraphQLField("plan", type: .scalar(String.self)),
          GraphQLField("emails", type: .list(.scalar(String.self))),
          GraphQLField("phones", type: .list(.scalar(String.self))),
          GraphQLField("getTags", type: .list(.object(GetTag.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, avatar: String? = nil, primaryName: String? = nil, plan: String? = nil, emails: [String?]? = nil, phones: [String?]? = nil, getTags: [GetTag?]? = nil) {
          self.init(snapshot: ["__typename": "Company", "_id": id, "avatar": avatar, "primaryName": primaryName, "plan": plan, "emails": emails, "phones": phones, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }

        public var primaryName: String? {
          get {
            return snapshot["primaryName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "primaryName")
          }
        }

        public var plan: String? {
          get {
            return snapshot["plan"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "plan")
          }
        }

        public var emails: [String?]? {
          get {
            return snapshot["emails"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "emails")
          }
        }

        public var phones: [String?]? {
          get {
            return snapshot["phones"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "phones")
          }
        }

        public var getTags: [GetTag?]? {
          get {
            return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var companyList: CompanyList {
            get {
              return CompanyList(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        public struct GetTag: GraphQLSelectionSet {
          public static let possibleTypes = ["Tag"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("colorCode", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, name: String? = nil, colorCode: String? = nil) {
            self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var colorCode: String? {
            get {
              return snapshot["colorCode"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "colorCode")
            }
          }
        }
      }

      public struct GetTag: GraphQLSelectionSet {
        public static let possibleTypes = ["Tag"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("colorCode", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, name: String? = nil, colorCode: String? = nil) {
          self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var colorCode: String? {
          get {
            return snapshot["colorCode"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "colorCode")
          }
        }
      }

      public struct Customer: GraphQLSelectionSet {
        public static let possibleTypes = ["Customer"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .scalar(String.self)),
          GraphQLField("lastName", type: .scalar(String.self)),
          GraphQLField("primaryEmail", type: .scalar(String.self)),
          GraphQLField("primaryPhone", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, firstName: String? = nil, lastName: String? = nil, primaryEmail: String? = nil, primaryPhone: String? = nil) {
          self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "primaryEmail": primaryEmail, "primaryPhone": primaryPhone])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["firstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["lastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var primaryEmail: String? {
          get {
            return snapshot["primaryEmail"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "primaryEmail")
          }
        }

        public var primaryPhone: String? {
          get {
            return snapshot["primaryPhone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "primaryPhone")
          }
        }
      }

      public struct Deal: GraphQLSelectionSet {
        public static let possibleTypes = ["Deal"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("companies", type: .list(.object(Company.selections))),
          GraphQLField("customers", type: .list(.object(Customer.selections))),
          GraphQLField("products", type: .scalar(JSON.self)),
          GraphQLField("amount", type: .scalar(JSON.self)),
          GraphQLField("closeDate", type: .scalar(SDate.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, companies: [Company?]? = nil, customers: [Customer?]? = nil, products: JSON? = nil, amount: JSON? = nil, closeDate: SDate? = nil) {
          self.init(snapshot: ["__typename": "Deal", "_id": id, "companies": companies.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }, "customers": customers.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, "products": products, "amount": amount, "closeDate": closeDate])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var companies: [Company?]? {
          get {
            return (snapshot["companies"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Company?] in value.map { (value: Snapshot?) -> Company? in value.flatMap { (value: Snapshot) -> Company in Company(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }, forKey: "companies")
          }
        }

        public var customers: [Customer?]? {
          get {
            return (snapshot["customers"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Customer?] in value.map { (value: Snapshot?) -> Customer? in value.flatMap { (value: Snapshot) -> Customer in Customer(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, forKey: "customers")
          }
        }

        public var products: JSON? {
          get {
            return snapshot["products"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "products")
          }
        }

        public var amount: JSON? {
          get {
            return snapshot["amount"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "amount")
          }
        }

        public var closeDate: SDate? {
          get {
            return snapshot["closeDate"] as? SDate
          }
          set {
            snapshot.updateValue(newValue, forKey: "closeDate")
          }
        }

        public struct Company: GraphQLSelectionSet {
          public static let possibleTypes = ["Company"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("primaryName", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, primaryName: String? = nil) {
            self.init(snapshot: ["__typename": "Company", "_id": id, "primaryName": primaryName])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var primaryName: String? {
            get {
              return snapshot["primaryName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "primaryName")
            }
          }
        }

        public struct Customer: GraphQLSelectionSet {
          public static let possibleTypes = ["Customer"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("firstName", type: .scalar(String.self)),
            GraphQLField("primaryEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, firstName: String? = nil, primaryEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "primaryEmail": primaryEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var firstName: String? {
            get {
              return snapshot["firstName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "firstName")
            }
          }

          public var primaryEmail: String? {
            get {
              return snapshot["primaryEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "primaryEmail")
            }
          }
        }
      }
    }
  }
}

public final class CompaniesRemoveMutation: GraphQLMutation {
  public static let operationString =
    "mutation CompaniesRemove($companyIds: [String]) {\n  companiesRemove(companyIds: $companyIds)\n}"

  public var companyIds: [String?]?

  public init(companyIds: [String?]? = nil) {
    self.companyIds = companyIds
  }

  public var variables: GraphQLMap? {
    return ["companyIds": companyIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("companiesRemove", arguments: ["companyIds": GraphQLVariable("companyIds")], type: .list(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(companiesRemove: [String?]? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "companiesRemove": companiesRemove])
    }

    public var companiesRemove: [String?]? {
      get {
        return snapshot["companiesRemove"] as? [String?]
      }
      set {
        snapshot.updateValue(newValue, forKey: "companiesRemove")
      }
    }
  }
}

public final class CustomersQuery: GraphQLQuery {
  public static let operationString =
    "query Customers($page: Int, $perPage: Int, $segment: String, $tag: String, $ids: [String], $searchValue: String, $brand: String, $integration: String, $form: String, $startDate: String, $endDate: String, $leadStatus: String, $lifecycleState: String) {\n  customers(page: $page, perPage: $perPage, segment: $segment, tag: $tag, ids: $ids, searchValue: $searchValue, brand: $brand, integration: $integration, form: $form, startDate: $startDate, endDate: $endDate, leadStatus: $leadStatus, lifecycleState: $lifecycleState) {\n    __typename\n    ...CustomerList\n  }\n}"

  public static var requestString: String { return operationString.appending(CustomerList.fragmentString) }

  public var page: Int?
  public var perPage: Int?
  public var segment: String?
  public var tag: String?
  public var ids: [String?]?
  public var searchValue: String?
  public var brand: String?
  public var integration: String?
  public var form: String?
  public var startDate: String?
  public var endDate: String?
  public var leadStatus: String?
  public var lifecycleState: String?

  public init(page: Int? = nil, perPage: Int? = nil, segment: String? = nil, tag: String? = nil, ids: [String?]? = nil, searchValue: String? = nil, brand: String? = nil, integration: String? = nil, form: String? = nil, startDate: String? = nil, endDate: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil) {
    self.page = page
    self.perPage = perPage
    self.segment = segment
    self.tag = tag
    self.ids = ids
    self.searchValue = searchValue
    self.brand = brand
    self.integration = integration
    self.form = form
    self.startDate = startDate
    self.endDate = endDate
    self.leadStatus = leadStatus
    self.lifecycleState = lifecycleState
  }

  public var variables: GraphQLMap? {
    return ["page": page, "perPage": perPage, "segment": segment, "tag": tag, "ids": ids, "searchValue": searchValue, "brand": brand, "integration": integration, "form": form, "startDate": startDate, "endDate": endDate, "leadStatus": leadStatus, "lifecycleState": lifecycleState]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customers", arguments: ["page": GraphQLVariable("page"), "perPage": GraphQLVariable("perPage"), "segment": GraphQLVariable("segment"), "tag": GraphQLVariable("tag"), "ids": GraphQLVariable("ids"), "searchValue": GraphQLVariable("searchValue"), "brand": GraphQLVariable("brand"), "integration": GraphQLVariable("integration"), "form": GraphQLVariable("form"), "startDate": GraphQLVariable("startDate"), "endDate": GraphQLVariable("endDate"), "leadStatus": GraphQLVariable("leadStatus"), "lifecycleState": GraphQLVariable("lifecycleState")], type: .list(.object(Customer.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customers: [Customer?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "customers": customers.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }])
    }

    public var customers: [Customer?]? {
      get {
        return (snapshot["customers"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Customer?] in value.map { (value: Snapshot?) -> Customer? in value.flatMap { (value: Snapshot) -> Customer in Customer(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, forKey: "customers")
      }
    }

    public struct Customer: GraphQLSelectionSet {
      public static let possibleTypes = ["Customer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("avatar", type: .scalar(String.self)),
        GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
        GraphQLField("primaryEmail", type: .scalar(String.self)),
        GraphQLField("primaryPhone", type: .scalar(String.self)),
        GraphQLField("facebookData", type: .scalar(JSON.self)),
        GraphQLField("twitterData", type: .scalar(JSON.self)),
        GraphQLField("getTags", type: .list(.object(GetTag.selections))),
        GraphQLField("conversations", type: .list(.object(Conversation.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, visitorContactInfo: JSON? = nil, primaryEmail: String? = nil, primaryPhone: String? = nil, facebookData: JSON? = nil, twitterData: JSON? = nil, getTags: [GetTag?]? = nil, conversations: [Conversation?]? = nil) {
        self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "visitorContactInfo": visitorContactInfo, "primaryEmail": primaryEmail, "primaryPhone": primaryPhone, "facebookData": facebookData, "twitterData": twitterData, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, "conversations": conversations.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }

      public var visitorContactInfo: JSON? {
        get {
          return snapshot["visitorContactInfo"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "visitorContactInfo")
        }
      }

      public var primaryEmail: String? {
        get {
          return snapshot["primaryEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryEmail")
        }
      }

      public var primaryPhone: String? {
        get {
          return snapshot["primaryPhone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryPhone")
        }
      }

      public var facebookData: JSON? {
        get {
          return snapshot["facebookData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "facebookData")
        }
      }

      public var twitterData: JSON? {
        get {
          return snapshot["twitterData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "twitterData")
        }
      }

      public var getTags: [GetTag?]? {
        get {
          return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
        }
      }

      public var conversations: [Conversation?]? {
        get {
          return (snapshot["conversations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Conversation?] in value.map { (value: Snapshot?) -> Conversation? in value.flatMap { (value: Snapshot) -> Conversation in Conversation(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }, forKey: "conversations")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var customerList: CustomerList {
          get {
            return CustomerList(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct GetTag: GraphQLSelectionSet {
        public static let possibleTypes = ["Tag"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("colorCode", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, name: String? = nil, colorCode: String? = nil) {
          self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var colorCode: String? {
          get {
            return snapshot["colorCode"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "colorCode")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["Conversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String) {
          self.init(snapshot: ["__typename": "Conversation", "_id": id])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }
      }
    }
  }
}

public final class CompaniesQuery: GraphQLQuery {
  public static let operationString =
    "query Companies($page: Int, $perPage: Int, $segment: String, $tag: String, $ids: [String], $searchValue: String, $leadStatus: String, $lifecycleState: String, $brand: String, $sortField: String, $sortDirection: Int) {\n  companies(page: $page, perPage: $perPage, segment: $segment, tag: $tag, ids: $ids, searchValue: $searchValue, leadStatus: $leadStatus, lifecycleState: $lifecycleState, brand: $brand, sortField: $sortField, sortDirection: $sortDirection) {\n    __typename\n    ...CompanyList\n  }\n}"

  public static var requestString: String { return operationString.appending(CompanyList.fragmentString) }

  public var page: Int?
  public var perPage: Int?
  public var segment: String?
  public var tag: String?
  public var ids: [String?]?
  public var searchValue: String?
  public var leadStatus: String?
  public var lifecycleState: String?
  public var brand: String?
  public var sortField: String?
  public var sortDirection: Int?

  public init(page: Int? = nil, perPage: Int? = nil, segment: String? = nil, tag: String? = nil, ids: [String?]? = nil, searchValue: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, brand: String? = nil, sortField: String? = nil, sortDirection: Int? = nil) {
    self.page = page
    self.perPage = perPage
    self.segment = segment
    self.tag = tag
    self.ids = ids
    self.searchValue = searchValue
    self.leadStatus = leadStatus
    self.lifecycleState = lifecycleState
    self.brand = brand
    self.sortField = sortField
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["page": page, "perPage": perPage, "segment": segment, "tag": tag, "ids": ids, "searchValue": searchValue, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "brand": brand, "sortField": sortField, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("companies", arguments: ["page": GraphQLVariable("page"), "perPage": GraphQLVariable("perPage"), "segment": GraphQLVariable("segment"), "tag": GraphQLVariable("tag"), "ids": GraphQLVariable("ids"), "searchValue": GraphQLVariable("searchValue"), "leadStatus": GraphQLVariable("leadStatus"), "lifecycleState": GraphQLVariable("lifecycleState"), "brand": GraphQLVariable("brand"), "sortField": GraphQLVariable("sortField"), "sortDirection": GraphQLVariable("sortDirection")], type: .list(.object(Company.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(companies: [Company?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "companies": companies.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }])
    }

    public var companies: [Company?]? {
      get {
        return (snapshot["companies"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Company?] in value.map { (value: Snapshot?) -> Company? in value.flatMap { (value: Snapshot) -> Company in Company(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }, forKey: "companies")
      }
    }

    public struct Company: GraphQLSelectionSet {
      public static let possibleTypes = ["Company"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("avatar", type: .scalar(String.self)),
        GraphQLField("primaryName", type: .scalar(String.self)),
        GraphQLField("plan", type: .scalar(String.self)),
        GraphQLField("emails", type: .list(.scalar(String.self))),
        GraphQLField("phones", type: .list(.scalar(String.self))),
        GraphQLField("getTags", type: .list(.object(GetTag.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, avatar: String? = nil, primaryName: String? = nil, plan: String? = nil, emails: [String?]? = nil, phones: [String?]? = nil, getTags: [GetTag?]? = nil) {
        self.init(snapshot: ["__typename": "Company", "_id": id, "avatar": avatar, "primaryName": primaryName, "plan": plan, "emails": emails, "phones": phones, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }

      public var primaryName: String? {
        get {
          return snapshot["primaryName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryName")
        }
      }

      public var plan: String? {
        get {
          return snapshot["plan"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "plan")
        }
      }

      public var emails: [String?]? {
        get {
          return snapshot["emails"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "emails")
        }
      }

      public var phones: [String?]? {
        get {
          return snapshot["phones"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "phones")
        }
      }

      public var getTags: [GetTag?]? {
        get {
          return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var companyList: CompanyList {
          get {
            return CompanyList(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct GetTag: GraphQLSelectionSet {
        public static let possibleTypes = ["Tag"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("colorCode", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, name: String? = nil, colorCode: String? = nil) {
          self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var colorCode: String? {
          get {
            return snapshot["colorCode"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "colorCode")
          }
        }
      }
    }
  }
}

public final class CustomersRemoveMutation: GraphQLMutation {
  public static let operationString =
    "mutation customersRemove($customerIds: [String]) {\n  customersRemove(customerIds: $customerIds)\n}"

  public var customerIds: [String?]?

  public init(customerIds: [String?]? = nil) {
    self.customerIds = customerIds
  }

  public var variables: GraphQLMap? {
    return ["customerIds": customerIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customersRemove", arguments: ["customerIds": GraphQLVariable("customerIds")], type: .list(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customersRemove: [String?]? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "customersRemove": customersRemove])
    }

    public var customersRemove: [String?]? {
      get {
        return snapshot["customersRemove"] as? [String?]
      }
      set {
        snapshot.updateValue(newValue, forKey: "customersRemove")
      }
    }
  }
}

public final class CustomersMergeMutation: GraphQLMutation {
  public static let operationString =
    "mutation customersMerge($customerIds: [String], $customerFields: JSON) {\n  customersMerge(customerIds: $customerIds, customerFields: $customerFields) {\n    __typename\n    _id\n  }\n}"

  public var customerIds: [String?]?
  public var customerFields: JSON?

  public init(customerIds: [String?]? = nil, customerFields: JSON? = nil) {
    self.customerIds = customerIds
    self.customerFields = customerFields
  }

  public var variables: GraphQLMap? {
    return ["customerIds": customerIds, "customerFields": customerFields]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customersMerge", arguments: ["customerIds": GraphQLVariable("customerIds"), "customerFields": GraphQLVariable("customerFields")], type: .object(CustomersMerge.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customersMerge: CustomersMerge? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "customersMerge": customersMerge.flatMap { (value: CustomersMerge) -> Snapshot in value.snapshot }])
    }

    public var customersMerge: CustomersMerge? {
      get {
        return (snapshot["customersMerge"] as? Snapshot).flatMap { CustomersMerge(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "customersMerge")
      }
    }

    public struct CustomersMerge: GraphQLSelectionSet {
      public static let possibleTypes = ["Customer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Customer", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class SegmentsQuery: GraphQLQuery {
  public static let operationString =
    "query segments($contentType: String!) {\n  segments(contentType: $contentType) {\n    __typename\n    ...SegmentObj\n  }\n}"

  public static var requestString: String { return operationString.appending(SegmentObj.fragmentString) }

  public var contentType: String

  public init(contentType: String) {
    self.contentType = contentType
  }

  public var variables: GraphQLMap? {
    return ["contentType": contentType]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("segments", arguments: ["contentType": GraphQLVariable("contentType")], type: .list(.object(Segment.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(segments: [Segment?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "segments": segments.flatMap { (value: [Segment?]) -> [Snapshot?] in value.map { (value: Segment?) -> Snapshot? in value.flatMap { (value: Segment) -> Snapshot in value.snapshot } } }])
    }

    public var segments: [Segment?]? {
      get {
        return (snapshot["segments"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Segment?] in value.map { (value: Snapshot?) -> Segment? in value.flatMap { (value: Snapshot) -> Segment in Segment(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Segment?]) -> [Snapshot?] in value.map { (value: Segment?) -> Snapshot? in value.flatMap { (value: Segment) -> Snapshot in value.snapshot } } }, forKey: "segments")
      }
    }

    public struct Segment: GraphQLSelectionSet {
      public static let possibleTypes = ["Segment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("subOf", type: .scalar(String.self)),
        GraphQLField("color", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String, subOf: String? = nil, color: String? = nil) {
        self.init(snapshot: ["__typename": "Segment", "_id": id, "name": name, "subOf": subOf, "color": color])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var subOf: String? {
        get {
          return snapshot["subOf"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subOf")
        }
      }

      public var color: String? {
        get {
          return snapshot["color"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "color")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var segmentObj: SegmentObj {
          get {
            return SegmentObj(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class IntegrationsQuery: GraphQLQuery {
  public static let operationString =
    "query integrations {\n  integrations(kind: \"form\") {\n    __typename\n    ...FormObj\n  }\n}"

  public static var requestString: String { return operationString.appending(FormObj.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("integrations", arguments: ["kind": "form"], type: .list(.object(Integration.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(integrations: [Integration?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "integrations": integrations.flatMap { (value: [Integration?]) -> [Snapshot?] in value.map { (value: Integration?) -> Snapshot? in value.flatMap { (value: Integration) -> Snapshot in value.snapshot } } }])
    }

    public var integrations: [Integration?]? {
      get {
        return (snapshot["integrations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Integration?] in value.map { (value: Snapshot?) -> Integration? in value.flatMap { (value: Snapshot) -> Integration in Integration(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Integration?]) -> [Snapshot?] in value.map { (value: Integration?) -> Snapshot? in value.flatMap { (value: Integration) -> Snapshot in value.snapshot } } }, forKey: "integrations")
      }
    }

    public struct Integration: GraphQLSelectionSet {
      public static let possibleTypes = ["Integration"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String) {
        self.init(snapshot: ["__typename": "Integration", "_id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var formObj: FormObj {
          get {
            return FormObj(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class ActivityLogsCustomerQuery: GraphQLQuery {
  public static let operationString =
    "query activityLogsCustomer($_id: String!) {\n  activityLogsCustomer(_id: $_id) {\n    __typename\n    ...LogData\n  }\n}"

  public static var requestString: String { return operationString.appending(LogData.fragmentString) }

  public var _id: String

  public init(_id: String) {
    self._id = _id
  }

  public var variables: GraphQLMap? {
    return ["_id": _id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("activityLogsCustomer", arguments: ["_id": GraphQLVariable("_id")], type: .list(.object(ActivityLogsCustomer.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(activityLogsCustomer: [ActivityLogsCustomer?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "activityLogsCustomer": activityLogsCustomer.flatMap { (value: [ActivityLogsCustomer?]) -> [Snapshot?] in value.map { (value: ActivityLogsCustomer?) -> Snapshot? in value.flatMap { (value: ActivityLogsCustomer) -> Snapshot in value.snapshot } } }])
    }

    public var activityLogsCustomer: [ActivityLogsCustomer?]? {
      get {
        return (snapshot["activityLogsCustomer"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [ActivityLogsCustomer?] in value.map { (value: Snapshot?) -> ActivityLogsCustomer? in value.flatMap { (value: Snapshot) -> ActivityLogsCustomer in ActivityLogsCustomer(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [ActivityLogsCustomer?]) -> [Snapshot?] in value.map { (value: ActivityLogsCustomer?) -> Snapshot? in value.flatMap { (value: ActivityLogsCustomer) -> Snapshot in value.snapshot } } }, forKey: "activityLogsCustomer")
      }
    }

    public struct ActivityLogsCustomer: GraphQLSelectionSet {
      public static let possibleTypes = ["ActivityLogForMonth"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.object(Date.selections))),
        GraphQLField("list", type: .nonNull(.list(.object(List.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: Date, list: [List?]) {
        self.init(snapshot: ["__typename": "ActivityLogForMonth", "date": date.snapshot, "list": list.map { (value: List?) -> Snapshot? in value.flatMap { (value: List) -> Snapshot in value.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: Date {
        get {
          return Date(snapshot: snapshot["date"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "date")
        }
      }

      public var list: [List?] {
        get {
          return (snapshot["list"] as! [Snapshot?]).map { (value: Snapshot?) -> List? in value.flatMap { (value: Snapshot) -> List in List(snapshot: value) } }
        }
        set {
          snapshot.updateValue(newValue.map { (value: List?) -> Snapshot? in value.flatMap { (value: List) -> Snapshot in value.snapshot } }, forKey: "list")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var logData: LogData {
          get {
            return LogData(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Date: GraphQLSelectionSet {
        public static let possibleTypes = ["ActivityLogYearMonthDoc"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("year", type: .scalar(Int.self)),
          GraphQLField("month", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(year: Int? = nil, month: Int? = nil) {
          self.init(snapshot: ["__typename": "ActivityLogYearMonthDoc", "year": year, "month": month])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var year: Int? {
          get {
            return snapshot["year"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "year")
          }
        }

        public var month: Int? {
          get {
            return snapshot["month"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "month")
          }
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes = ["ActivityLog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("action", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(SDate.self))),
          GraphQLField("by", type: .object(By.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String? = nil, action: String, content: String? = nil, createdAt: SDate, by: By? = nil) {
          self.init(snapshot: ["__typename": "ActivityLog", "id": id, "action": action, "content": content, "createdAt": createdAt, "by": by.flatMap { (value: By) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var action: String {
          get {
            return snapshot["action"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var createdAt: SDate {
          get {
            return snapshot["createdAt"]! as! SDate
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var by: By? {
          get {
            return (snapshot["by"] as? Snapshot).flatMap { By(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "by")
          }
        }

        public struct By: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityLogActionPerformer"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(String.self))),
            GraphQLField("details", type: .object(Detail.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String? = nil, type: String, details: Detail? = nil) {
            self.init(snapshot: ["__typename": "ActivityLogActionPerformer", "_id": id, "type": type, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String? {
            get {
              return snapshot["_id"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var type: String {
            get {
              return snapshot["type"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var details: Detail? {
            get {
              return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "details")
            }
          }

          public struct Detail: GraphQLSelectionSet {
            public static let possibleTypes = ["ActivityLogPerformerDetails"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("avatar", type: .scalar(String.self)),
              GraphQLField("fullName", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(avatar: String? = nil, fullName: String? = nil) {
              self.init(snapshot: ["__typename": "ActivityLogPerformerDetails", "avatar": avatar, "fullName": fullName])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var avatar: String? {
              get {
                return snapshot["avatar"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "avatar")
              }
            }

            public var fullName: String? {
              get {
                return snapshot["fullName"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "fullName")
              }
            }
          }
        }
      }
    }
  }
}

public final class ActivityLogsCompanyQuery: GraphQLQuery {
  public static let operationString =
    "query activityLogsCompany($_id: String!) {\n  activityLogsCompany(_id: $_id) {\n    __typename\n    ...LogData\n  }\n}"

  public static var requestString: String { return operationString.appending(LogData.fragmentString) }

  public var _id: String

  public init(_id: String) {
    self._id = _id
  }

  public var variables: GraphQLMap? {
    return ["_id": _id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("activityLogsCompany", arguments: ["_id": GraphQLVariable("_id")], type: .list(.object(ActivityLogsCompany.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(activityLogsCompany: [ActivityLogsCompany?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "activityLogsCompany": activityLogsCompany.flatMap { (value: [ActivityLogsCompany?]) -> [Snapshot?] in value.map { (value: ActivityLogsCompany?) -> Snapshot? in value.flatMap { (value: ActivityLogsCompany) -> Snapshot in value.snapshot } } }])
    }

    public var activityLogsCompany: [ActivityLogsCompany?]? {
      get {
        return (snapshot["activityLogsCompany"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [ActivityLogsCompany?] in value.map { (value: Snapshot?) -> ActivityLogsCompany? in value.flatMap { (value: Snapshot) -> ActivityLogsCompany in ActivityLogsCompany(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [ActivityLogsCompany?]) -> [Snapshot?] in value.map { (value: ActivityLogsCompany?) -> Snapshot? in value.flatMap { (value: ActivityLogsCompany) -> Snapshot in value.snapshot } } }, forKey: "activityLogsCompany")
      }
    }

    public struct ActivityLogsCompany: GraphQLSelectionSet {
      public static let possibleTypes = ["ActivityLogForMonth"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("date", type: .nonNull(.object(Date.selections))),
        GraphQLField("list", type: .nonNull(.list(.object(List.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(date: Date, list: [List?]) {
        self.init(snapshot: ["__typename": "ActivityLogForMonth", "date": date.snapshot, "list": list.map { (value: List?) -> Snapshot? in value.flatMap { (value: List) -> Snapshot in value.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var date: Date {
        get {
          return Date(snapshot: snapshot["date"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "date")
        }
      }

      public var list: [List?] {
        get {
          return (snapshot["list"] as! [Snapshot?]).map { (value: Snapshot?) -> List? in value.flatMap { (value: Snapshot) -> List in List(snapshot: value) } }
        }
        set {
          snapshot.updateValue(newValue.map { (value: List?) -> Snapshot? in value.flatMap { (value: List) -> Snapshot in value.snapshot } }, forKey: "list")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var logData: LogData {
          get {
            return LogData(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Date: GraphQLSelectionSet {
        public static let possibleTypes = ["ActivityLogYearMonthDoc"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("year", type: .scalar(Int.self)),
          GraphQLField("month", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(year: Int? = nil, month: Int? = nil) {
          self.init(snapshot: ["__typename": "ActivityLogYearMonthDoc", "year": year, "month": month])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var year: Int? {
          get {
            return snapshot["year"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "year")
          }
        }

        public var month: Int? {
          get {
            return snapshot["month"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "month")
          }
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes = ["ActivityLog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("action", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(SDate.self))),
          GraphQLField("by", type: .object(By.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String? = nil, action: String, content: String? = nil, createdAt: SDate, by: By? = nil) {
          self.init(snapshot: ["__typename": "ActivityLog", "id": id, "action": action, "content": content, "createdAt": createdAt, "by": by.flatMap { (value: By) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var action: String {
          get {
            return snapshot["action"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var createdAt: SDate {
          get {
            return snapshot["createdAt"]! as! SDate
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var by: By? {
          get {
            return (snapshot["by"] as? Snapshot).flatMap { By(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "by")
          }
        }

        public struct By: GraphQLSelectionSet {
          public static let possibleTypes = ["ActivityLogActionPerformer"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(String.self))),
            GraphQLField("details", type: .object(Detail.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String? = nil, type: String, details: Detail? = nil) {
            self.init(snapshot: ["__typename": "ActivityLogActionPerformer", "_id": id, "type": type, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String? {
            get {
              return snapshot["_id"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var type: String {
            get {
              return snapshot["type"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "type")
            }
          }

          public var details: Detail? {
            get {
              return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "details")
            }
          }

          public struct Detail: GraphQLSelectionSet {
            public static let possibleTypes = ["ActivityLogPerformerDetails"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("avatar", type: .scalar(String.self)),
              GraphQLField("fullName", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(avatar: String? = nil, fullName: String? = nil) {
              self.init(snapshot: ["__typename": "ActivityLogPerformerDetails", "avatar": avatar, "fullName": fullName])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var avatar: String? {
              get {
                return snapshot["avatar"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "avatar")
              }
            }

            public var fullName: String? {
              get {
                return snapshot["fullName"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "fullName")
              }
            }
          }
        }
      }
    }
  }
}

public final class InternalNotesAddMutation: GraphQLMutation {
  public static let operationString =
    "mutation internalNotesAdd($contentType: String!, $contentTypeId: String, $content: String) {\n  internalNotesAdd(contentType: $contentType, contentTypeId: $contentTypeId, content: $content) {\n    __typename\n    _id\n  }\n}"

  public var contentType: String
  public var contentTypeId: String?
  public var content: String?

  public init(contentType: String, contentTypeId: String? = nil, content: String? = nil) {
    self.contentType = contentType
    self.contentTypeId = contentTypeId
    self.content = content
  }

  public var variables: GraphQLMap? {
    return ["contentType": contentType, "contentTypeId": contentTypeId, "content": content]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("internalNotesAdd", arguments: ["contentType": GraphQLVariable("contentType"), "contentTypeId": GraphQLVariable("contentTypeId"), "content": GraphQLVariable("content")], type: .object(InternalNotesAdd.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(internalNotesAdd: InternalNotesAdd? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "internalNotesAdd": internalNotesAdd.flatMap { (value: InternalNotesAdd) -> Snapshot in value.snapshot }])
    }

    public var internalNotesAdd: InternalNotesAdd? {
      get {
        return (snapshot["internalNotesAdd"] as? Snapshot).flatMap { InternalNotesAdd(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "internalNotesAdd")
      }
    }

    public struct InternalNotesAdd: GraphQLSelectionSet {
      public static let possibleTypes = ["InternalNote"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "InternalNote", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class CustomerDetailQuery: GraphQLQuery {
  public static let operationString =
    "query customerDetail($_id: String!) {\n  customerDetail(_id: $_id) {\n    __typename\n    ...CustomerInfo\n  }\n}"

  public static var requestString: String { return operationString.appending(CustomerInfo.fragmentString).appending(UserData.fragmentString) }

  public var _id: String

  public init(_id: String) {
    self._id = _id
  }

  public var variables: GraphQLMap? {
    return ["_id": _id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customerDetail", arguments: ["_id": GraphQLVariable("_id")], type: .object(CustomerDetail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customerDetail: CustomerDetail? = nil) {
      self.init(snapshot: ["__typename": "Query", "customerDetail": customerDetail.flatMap { (value: CustomerDetail) -> Snapshot in value.snapshot }])
    }

    public var customerDetail: CustomerDetail? {
      get {
        return (snapshot["customerDetail"] as? Snapshot).flatMap { CustomerDetail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "customerDetail")
      }
    }

    public struct CustomerDetail: GraphQLSelectionSet {
      public static let possibleTypes = ["Customer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("lastName", type: .scalar(String.self)),
        GraphQLField("avatar", type: .scalar(String.self)),
        GraphQLField("primaryEmail", type: .scalar(String.self)),
        GraphQLField("emails", type: .list(.scalar(String.self))),
        GraphQLField("primaryPhone", type: .scalar(String.self)),
        GraphQLField("phones", type: .list(.scalar(String.self))),
        GraphQLField("isUser", type: .scalar(Bool.self)),
        GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
        GraphQLField("position", type: .scalar(String.self)),
        GraphQLField("department", type: .scalar(String.self)),
        GraphQLField("leadStatus", type: .scalar(String.self)),
        GraphQLField("lifecycleState", type: .scalar(String.self)),
        GraphQLField("hasAuthority", type: .scalar(String.self)),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("doNotDisturb", type: .scalar(String.self)),
        GraphQLField("links", type: .object(Link.selections)),
        GraphQLField("ownerId", type: .scalar(String.self)),
        GraphQLField("owner", type: .object(Owner.selections)),
        GraphQLField("integrationId", type: .scalar(String.self)),
        GraphQLField("remoteAddress", type: .scalar(String.self)),
        GraphQLField("location", type: .scalar(JSON.self)),
        GraphQLField("customFieldsData", type: .scalar(JSON.self)),
        GraphQLField("messengerData", type: .scalar(JSON.self)),
        GraphQLField("twitterData", type: .scalar(JSON.self)),
        GraphQLField("facebookData", type: .scalar(JSON.self)),
        GraphQLField("tagIds", type: .list(.scalar(String.self))),
        GraphQLField("getTags", type: .list(.object(GetTag.selections))),
        GraphQLField("integration", type: .object(Integration.selections)),
        GraphQLField("getMessengerCustomData", type: .scalar(JSON.self)),
        GraphQLField("companies", type: .list(.object(Company.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, primaryEmail: String? = nil, emails: [String?]? = nil, primaryPhone: String? = nil, phones: [String?]? = nil, isUser: Bool? = nil, visitorContactInfo: JSON? = nil, position: String? = nil, department: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, hasAuthority: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: Link? = nil, ownerId: String? = nil, owner: Owner? = nil, integrationId: String? = nil, remoteAddress: String? = nil, location: JSON? = nil, customFieldsData: JSON? = nil, messengerData: JSON? = nil, twitterData: JSON? = nil, facebookData: JSON? = nil, tagIds: [String?]? = nil, getTags: [GetTag?]? = nil, integration: Integration? = nil, getMessengerCustomData: JSON? = nil, companies: [Company?]? = nil) {
        self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "primaryEmail": primaryEmail, "emails": emails, "primaryPhone": primaryPhone, "phones": phones, "isUser": isUser, "visitorContactInfo": visitorContactInfo, "position": position, "department": department, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "hasAuthority": hasAuthority, "description": description, "doNotDisturb": doNotDisturb, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }, "ownerId": ownerId, "owner": owner.flatMap { (value: Owner) -> Snapshot in value.snapshot }, "integrationId": integrationId, "remoteAddress": remoteAddress, "location": location, "customFieldsData": customFieldsData, "messengerData": messengerData, "twitterData": twitterData, "facebookData": facebookData, "tagIds": tagIds, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, "integration": integration.flatMap { (value: Integration) -> Snapshot in value.snapshot }, "getMessengerCustomData": getMessengerCustomData, "companies": companies.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["lastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }

      public var primaryEmail: String? {
        get {
          return snapshot["primaryEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryEmail")
        }
      }

      public var emails: [String?]? {
        get {
          return snapshot["emails"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "emails")
        }
      }

      public var primaryPhone: String? {
        get {
          return snapshot["primaryPhone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryPhone")
        }
      }

      public var phones: [String?]? {
        get {
          return snapshot["phones"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "phones")
        }
      }

      public var isUser: Bool? {
        get {
          return snapshot["isUser"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isUser")
        }
      }

      public var visitorContactInfo: JSON? {
        get {
          return snapshot["visitorContactInfo"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "visitorContactInfo")
        }
      }

      public var position: String? {
        get {
          return snapshot["position"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "position")
        }
      }

      public var department: String? {
        get {
          return snapshot["department"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "department")
        }
      }

      public var leadStatus: String? {
        get {
          return snapshot["leadStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "leadStatus")
        }
      }

      public var lifecycleState: String? {
        get {
          return snapshot["lifecycleState"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lifecycleState")
        }
      }

      public var hasAuthority: String? {
        get {
          return snapshot["hasAuthority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasAuthority")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var doNotDisturb: String? {
        get {
          return snapshot["doNotDisturb"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doNotDisturb")
        }
      }

      public var links: Link? {
        get {
          return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "links")
        }
      }

      public var ownerId: String? {
        get {
          return snapshot["ownerId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var owner: Owner? {
        get {
          return (snapshot["owner"] as? Snapshot).flatMap { Owner(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "owner")
        }
      }

      public var integrationId: String? {
        get {
          return snapshot["integrationId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "integrationId")
        }
      }

      public var remoteAddress: String? {
        get {
          return snapshot["remoteAddress"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "remoteAddress")
        }
      }

      public var location: JSON? {
        get {
          return snapshot["location"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "location")
        }
      }

      public var customFieldsData: JSON? {
        get {
          return snapshot["customFieldsData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "customFieldsData")
        }
      }

      public var messengerData: JSON? {
        get {
          return snapshot["messengerData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "messengerData")
        }
      }

      public var twitterData: JSON? {
        get {
          return snapshot["twitterData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "twitterData")
        }
      }

      public var facebookData: JSON? {
        get {
          return snapshot["facebookData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "facebookData")
        }
      }

      public var tagIds: [String?]? {
        get {
          return snapshot["tagIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tagIds")
        }
      }

      public var getTags: [GetTag?]? {
        get {
          return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
        }
      }

      public var integration: Integration? {
        get {
          return (snapshot["integration"] as? Snapshot).flatMap { Integration(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "integration")
        }
      }

      public var getMessengerCustomData: JSON? {
        get {
          return snapshot["getMessengerCustomData"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "getMessengerCustomData")
        }
      }

      public var companies: [Company?]? {
        get {
          return (snapshot["companies"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Company?] in value.map { (value: Snapshot?) -> Company? in value.flatMap { (value: Snapshot) -> Company in Company(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }, forKey: "companies")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var customerInfo: CustomerInfo {
          get {
            return CustomerInfo(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes = ["CustomerLinks"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("linkedIn", type: .scalar(String.self)),
          GraphQLField("twitter", type: .scalar(String.self)),
          GraphQLField("facebook", type: .scalar(String.self)),
          GraphQLField("github", type: .scalar(String.self)),
          GraphQLField("youtube", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, github: String? = nil, youtube: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "CustomerLinks", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "github": github, "youtube": youtube, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var linkedIn: String? {
          get {
            return snapshot["linkedIn"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "linkedIn")
          }
        }

        public var twitter: String? {
          get {
            return snapshot["twitter"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "twitter")
          }
        }

        public var facebook: String? {
          get {
            return snapshot["facebook"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "facebook")
          }
        }

        public var github: String? {
          get {
            return snapshot["github"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "github")
          }
        }

        public var youtube: String? {
          get {
            return snapshot["youtube"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "youtube")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }
      }

      public struct Owner: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("details", type: .object(Detail.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, username: String? = nil, details: Detail? = nil) {
          self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var username: String? {
          get {
            return snapshot["username"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var details: Detail? {
          get {
            return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "details")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var userData: UserData {
            get {
              return UserData(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        public struct Detail: GraphQLSelectionSet {
          public static let possibleTypes = ["UserDetailsType"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("fullName", type: .scalar(String.self)),
            GraphQLField("avatar", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(fullName: String? = nil, avatar: String? = nil) {
            self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName, "avatar": avatar])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fullName: String? {
            get {
              return snapshot["fullName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "fullName")
            }
          }

          public var avatar: String? {
            get {
              return snapshot["avatar"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "avatar")
            }
          }
        }
      }

      public struct GetTag: GraphQLSelectionSet {
        public static let possibleTypes = ["Tag"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("colorCode", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, name: String? = nil, colorCode: String? = nil) {
          self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var colorCode: String? {
          get {
            return snapshot["colorCode"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "colorCode")
          }
        }
      }

      public struct Integration: GraphQLSelectionSet {
        public static let possibleTypes = ["Integration"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("kind", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(kind: String, name: String) {
          self.init(snapshot: ["__typename": "Integration", "kind": kind, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var kind: String {
          get {
            return snapshot["kind"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "kind")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Company: GraphQLSelectionSet {
        public static let possibleTypes = ["Company"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("primaryName", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, primaryName: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "Company", "_id": id, "primaryName": primaryName, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var primaryName: String? {
          get {
            return snapshot["primaryName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "primaryName")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }
      }
    }
  }
}

public final class CustomersAddMutation: GraphQLMutation {
  public static let operationString =
    "mutation customersAdd($avatar: String, $firstName: String, $lastName: String, $primaryEmail: String, $primaryPhone: String, $phones: [String], $emails: [String], $ownerId: String, $position: String, $department: String, $leadStatus: String, $lifecycleState: String, $hasAuthority: String, $description: String, $doNotDisturb: String, $links: JSON, $customFieldsData: JSON) {\n  customersAdd(avatar: $avatar, firstName: $firstName, lastName: $lastName, primaryEmail: $primaryEmail, primaryPhone: $primaryPhone, phones: $phones, emails: $emails, ownerId: $ownerId, position: $position, department: $department, leadStatus: $leadStatus, lifecycleState: $lifecycleState, hasAuthority: $hasAuthority, description: $description, doNotDisturb: $doNotDisturb, links: $links, customFieldsData: $customFieldsData) {\n    __typename\n    _id\n  }\n}"

  public var avatar: String?
  public var firstName: String?
  public var lastName: String?
  public var primaryEmail: String?
  public var primaryPhone: String?
  public var phones: [String?]?
  public var emails: [String?]?
  public var ownerId: String?
  public var position: String?
  public var department: String?
  public var leadStatus: String?
  public var lifecycleState: String?
  public var hasAuthority: String?
  public var description: String?
  public var doNotDisturb: String?
  public var links: JSON?
  public var customFieldsData: JSON?

  public init(avatar: String? = nil, firstName: String? = nil, lastName: String? = nil, primaryEmail: String? = nil, primaryPhone: String? = nil, phones: [String?]? = nil, emails: [String?]? = nil, ownerId: String? = nil, position: String? = nil, department: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, hasAuthority: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: JSON? = nil, customFieldsData: JSON? = nil) {
    self.avatar = avatar
    self.firstName = firstName
    self.lastName = lastName
    self.primaryEmail = primaryEmail
    self.primaryPhone = primaryPhone
    self.phones = phones
    self.emails = emails
    self.ownerId = ownerId
    self.position = position
    self.department = department
    self.leadStatus = leadStatus
    self.lifecycleState = lifecycleState
    self.hasAuthority = hasAuthority
    self.description = description
    self.doNotDisturb = doNotDisturb
    self.links = links
    self.customFieldsData = customFieldsData
  }

  public var variables: GraphQLMap? {
    return ["avatar": avatar, "firstName": firstName, "lastName": lastName, "primaryEmail": primaryEmail, "primaryPhone": primaryPhone, "phones": phones, "emails": emails, "ownerId": ownerId, "position": position, "department": department, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "hasAuthority": hasAuthority, "description": description, "doNotDisturb": doNotDisturb, "links": links, "customFieldsData": customFieldsData]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customersAdd", arguments: ["avatar": GraphQLVariable("avatar"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName"), "primaryEmail": GraphQLVariable("primaryEmail"), "primaryPhone": GraphQLVariable("primaryPhone"), "phones": GraphQLVariable("phones"), "emails": GraphQLVariable("emails"), "ownerId": GraphQLVariable("ownerId"), "position": GraphQLVariable("position"), "department": GraphQLVariable("department"), "leadStatus": GraphQLVariable("leadStatus"), "lifecycleState": GraphQLVariable("lifecycleState"), "hasAuthority": GraphQLVariable("hasAuthority"), "description": GraphQLVariable("description"), "doNotDisturb": GraphQLVariable("doNotDisturb"), "links": GraphQLVariable("links"), "customFieldsData": GraphQLVariable("customFieldsData")], type: .object(CustomersAdd.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customersAdd: CustomersAdd? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "customersAdd": customersAdd.flatMap { (value: CustomersAdd) -> Snapshot in value.snapshot }])
    }

    public var customersAdd: CustomersAdd? {
      get {
        return (snapshot["customersAdd"] as? Snapshot).flatMap { CustomersAdd(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "customersAdd")
      }
    }

    public struct CustomersAdd: GraphQLSelectionSet {
      public static let possibleTypes = ["Customer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Customer", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class CustomersEditMutation: GraphQLMutation {
  public static let operationString =
    "mutation customersEdit($_id: String!, $avatar: String, $firstName: String, $lastName: String, $primaryEmail: String, $email: [String], $primaryPhone: String, $phone: [String], $ownerId: String, $position: String, $department: String, $leadStatus: String, $lifecycleState: String, $hasAuthority: String, $description: String, $doNotDisturb: String, $links: JSON, $customFieldsData: JSON) {\n  customersEdit(_id: $_id, avatar: $avatar, firstName: $firstName, lastName: $lastName, primaryEmail: $primaryEmail, emails: $email, primaryPhone: $primaryPhone, phones: $phone, ownerId: $ownerId, position: $position, department: $department, leadStatus: $leadStatus, lifecycleState: $lifecycleState, hasAuthority: $hasAuthority, description: $description, doNotDisturb: $doNotDisturb, links: $links, customFieldsData: $customFieldsData) {\n    __typename\n    _id\n  }\n}"

  public var _id: String
  public var avatar: String?
  public var firstName: String?
  public var lastName: String?
  public var primaryEmail: String?
  public var email: [String?]?
  public var primaryPhone: String?
  public var phone: [String?]?
  public var ownerId: String?
  public var position: String?
  public var department: String?
  public var leadStatus: String?
  public var lifecycleState: String?
  public var hasAuthority: String?
  public var description: String?
  public var doNotDisturb: String?
  public var links: JSON?
  public var customFieldsData: JSON?

  public init(_id: String, avatar: String? = nil, firstName: String? = nil, lastName: String? = nil, primaryEmail: String? = nil, email: [String?]? = nil, primaryPhone: String? = nil, phone: [String?]? = nil, ownerId: String? = nil, position: String? = nil, department: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, hasAuthority: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: JSON? = nil, customFieldsData: JSON? = nil) {
    self._id = _id
    self.avatar = avatar
    self.firstName = firstName
    self.lastName = lastName
    self.primaryEmail = primaryEmail
    self.email = email
    self.primaryPhone = primaryPhone
    self.phone = phone
    self.ownerId = ownerId
    self.position = position
    self.department = department
    self.leadStatus = leadStatus
    self.lifecycleState = lifecycleState
    self.hasAuthority = hasAuthority
    self.description = description
    self.doNotDisturb = doNotDisturb
    self.links = links
    self.customFieldsData = customFieldsData
  }

  public var variables: GraphQLMap? {
    return ["_id": _id, "avatar": avatar, "firstName": firstName, "lastName": lastName, "primaryEmail": primaryEmail, "email": email, "primaryPhone": primaryPhone, "phone": phone, "ownerId": ownerId, "position": position, "department": department, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "hasAuthority": hasAuthority, "description": description, "doNotDisturb": doNotDisturb, "links": links, "customFieldsData": customFieldsData]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customersEdit", arguments: ["_id": GraphQLVariable("_id"), "avatar": GraphQLVariable("avatar"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName"), "primaryEmail": GraphQLVariable("primaryEmail"), "emails": GraphQLVariable("email"), "primaryPhone": GraphQLVariable("primaryPhone"), "phones": GraphQLVariable("phone"), "ownerId": GraphQLVariable("ownerId"), "position": GraphQLVariable("position"), "department": GraphQLVariable("department"), "leadStatus": GraphQLVariable("leadStatus"), "lifecycleState": GraphQLVariable("lifecycleState"), "hasAuthority": GraphQLVariable("hasAuthority"), "description": GraphQLVariable("description"), "doNotDisturb": GraphQLVariable("doNotDisturb"), "links": GraphQLVariable("links"), "customFieldsData": GraphQLVariable("customFieldsData")], type: .object(CustomersEdit.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customersEdit: CustomersEdit? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "customersEdit": customersEdit.flatMap { (value: CustomersEdit) -> Snapshot in value.snapshot }])
    }

    public var customersEdit: CustomersEdit? {
      get {
        return (snapshot["customersEdit"] as? Snapshot).flatMap { CustomersEdit(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "customersEdit")
      }
    }

    public struct CustomersEdit: GraphQLSelectionSet {
      public static let possibleTypes = ["Customer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Customer", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class FieldsGroupsQuery: GraphQLQuery {
  public static let operationString =
    "query fieldsGroups($contentType: String!) {\n  fieldsGroups(contentType: $contentType) {\n    __typename\n    ...FieldGroup\n  }\n}"

  public static var requestString: String { return operationString.appending(FieldGroup.fragmentString).appending(FieldData.fragmentString) }

  public var contentType: String

  public init(contentType: String) {
    self.contentType = contentType
  }

  public var variables: GraphQLMap? {
    return ["contentType": contentType]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fieldsGroups", arguments: ["contentType": GraphQLVariable("contentType")], type: .list(.object(FieldsGroup.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fieldsGroups: [FieldsGroup?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "fieldsGroups": fieldsGroups.flatMap { (value: [FieldsGroup?]) -> [Snapshot?] in value.map { (value: FieldsGroup?) -> Snapshot? in value.flatMap { (value: FieldsGroup) -> Snapshot in value.snapshot } } }])
    }

    public var fieldsGroups: [FieldsGroup?]? {
      get {
        return (snapshot["fieldsGroups"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [FieldsGroup?] in value.map { (value: Snapshot?) -> FieldsGroup? in value.flatMap { (value: Snapshot) -> FieldsGroup in FieldsGroup(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [FieldsGroup?]) -> [Snapshot?] in value.map { (value: FieldsGroup?) -> Snapshot? in value.flatMap { (value: FieldsGroup) -> Snapshot in value.snapshot } } }, forKey: "fieldsGroups")
      }
    }

    public struct FieldsGroup: GraphQLSelectionSet {
      public static let possibleTypes = ["FieldsGroup"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("order", type: .scalar(Int.self)),
        GraphQLField("isVisible", type: .scalar(Bool.self)),
        GraphQLField("isDefinedByErxes", type: .scalar(Bool.self)),
        GraphQLField("fields", type: .list(.object(Field.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String? = nil, description: String? = nil, order: Int? = nil, isVisible: Bool? = nil, isDefinedByErxes: Bool? = nil, fields: [Field?]? = nil) {
        self.init(snapshot: ["__typename": "FieldsGroup", "_id": id, "name": name, "description": description, "order": order, "isVisible": isVisible, "isDefinedByErxes": isDefinedByErxes, "fields": fields.flatMap { (value: [Field?]) -> [Snapshot?] in value.map { (value: Field?) -> Snapshot? in value.flatMap { (value: Field) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var order: Int? {
        get {
          return snapshot["order"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "order")
        }
      }

      public var isVisible: Bool? {
        get {
          return snapshot["isVisible"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isVisible")
        }
      }

      public var isDefinedByErxes: Bool? {
        get {
          return snapshot["isDefinedByErxes"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isDefinedByErxes")
        }
      }

      public var fields: [Field?]? {
        get {
          return (snapshot["fields"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Field?] in value.map { (value: Snapshot?) -> Field? in value.flatMap { (value: Snapshot) -> Field in Field(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Field?]) -> [Snapshot?] in value.map { (value: Field?) -> Snapshot? in value.flatMap { (value: Field) -> Snapshot in value.snapshot } } }, forKey: "fields")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var fieldGroup: FieldGroup {
          get {
            return FieldGroup(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Field: GraphQLSelectionSet {
        public static let possibleTypes = ["Field"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("contentType", type: .nonNull(.scalar(String.self))),
          GraphQLField("type", type: .scalar(String.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("isVisible", type: .scalar(Bool.self)),
          GraphQLField("validation", type: .scalar(String.self)),
          GraphQLField("order", type: .scalar(Int.self)),
          GraphQLField("options", type: .list(.scalar(String.self))),
          GraphQLField("groupId", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, contentType: String, type: String? = nil, text: String? = nil, isVisible: Bool? = nil, validation: String? = nil, order: Int? = nil, options: [String?]? = nil, groupId: String? = nil, description: String? = nil) {
          self.init(snapshot: ["__typename": "Field", "_id": id, "contentType": contentType, "type": type, "text": text, "isVisible": isVisible, "validation": validation, "order": order, "options": options, "groupId": groupId, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var contentType: String {
          get {
            return snapshot["contentType"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "contentType")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }

        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        public var isVisible: Bool? {
          get {
            return snapshot["isVisible"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isVisible")
          }
        }

        public var validation: String? {
          get {
            return snapshot["validation"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "validation")
          }
        }

        public var order: Int? {
          get {
            return snapshot["order"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "order")
          }
        }

        public var options: [String?]? {
          get {
            return snapshot["options"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "options")
          }
        }

        public var groupId: String? {
          get {
            return snapshot["groupId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "groupId")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var fieldData: FieldData {
            get {
              return FieldData(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

public final class BrandsQuery: GraphQLQuery {
  public static let operationString =
    "query Brands {\n  brands {\n    __typename\n    ...BrandDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(BrandDetail.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("brands", type: .list(.object(Brand.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(brands: [Brand?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "brands": brands.flatMap { (value: [Brand?]) -> [Snapshot?] in value.map { (value: Brand?) -> Snapshot? in value.flatMap { (value: Brand) -> Snapshot in value.snapshot } } }])
    }

    public var brands: [Brand?]? {
      get {
        return (snapshot["brands"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Brand?] in value.map { (value: Snapshot?) -> Brand? in value.flatMap { (value: Snapshot) -> Brand in Brand(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Brand?]) -> [Snapshot?] in value.map { (value: Brand?) -> Snapshot? in value.flatMap { (value: Brand) -> Snapshot in value.snapshot } } }, forKey: "brands")
      }
    }

    public struct Brand: GraphQLSelectionSet {
      public static let possibleTypes = ["Brand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String? = nil) {
        self.init(snapshot: ["__typename": "Brand", "_id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var brandDetail: BrandDetail {
          get {
            return BrandDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class ChannelsQuery: GraphQLQuery {
  public static let operationString =
    "query Channels {\n  channels {\n    __typename\n    ...ChannelDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(ChannelDetail.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("channels", type: .list(.object(Channel.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(channels: [Channel?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "channels": channels.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }])
    }

    public var channels: [Channel?]? {
      get {
        return (snapshot["channels"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Channel?] in value.map { (value: Snapshot?) -> Channel? in value.flatMap { (value: Snapshot) -> Channel in Channel(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }, forKey: "channels")
      }
    }

    public struct Channel: GraphQLSelectionSet {
      public static let possibleTypes = ["Channel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("integrationIds", type: .list(.scalar(String.self))),
        GraphQLField("memberIds", type: .list(.scalar(String.self))),
        GraphQLField("conversationCount", type: .scalar(Int.self)),
        GraphQLField("openConversationCount", type: .scalar(Int.self)),
        GraphQLField("integrations", type: .list(.object(Integration.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String, description: String? = nil, integrationIds: [String?]? = nil, memberIds: [String?]? = nil, conversationCount: Int? = nil, openConversationCount: Int? = nil, integrations: [Integration?]? = nil) {
        self.init(snapshot: ["__typename": "Channel", "_id": id, "name": name, "description": description, "integrationIds": integrationIds, "memberIds": memberIds, "conversationCount": conversationCount, "openConversationCount": openConversationCount, "integrations": integrations.flatMap { (value: [Integration?]) -> [Snapshot?] in value.map { (value: Integration?) -> Snapshot? in value.flatMap { (value: Integration) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var integrationIds: [String?]? {
        get {
          return snapshot["integrationIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "integrationIds")
        }
      }

      public var memberIds: [String?]? {
        get {
          return snapshot["memberIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "memberIds")
        }
      }

      public var conversationCount: Int? {
        get {
          return snapshot["conversationCount"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversationCount")
        }
      }

      public var openConversationCount: Int? {
        get {
          return snapshot["openConversationCount"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "openConversationCount")
        }
      }

      public var integrations: [Integration?]? {
        get {
          return (snapshot["integrations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Integration?] in value.map { (value: Snapshot?) -> Integration? in value.flatMap { (value: Snapshot) -> Integration in Integration(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Integration?]) -> [Snapshot?] in value.map { (value: Integration?) -> Snapshot? in value.flatMap { (value: Integration) -> Snapshot in value.snapshot } } }, forKey: "integrations")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var channelDetail: ChannelDetail {
          get {
            return ChannelDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Integration: GraphQLSelectionSet {
        public static let possibleTypes = ["Integration"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("code", type: .scalar(String.self)),
          GraphQLField("formId", type: .scalar(String.self)),
          GraphQLField("formData", type: .scalar(JSON.self)),
          GraphQLField("messengerData", type: .scalar(JSON.self)),
          GraphQLField("twitterData", type: .scalar(JSON.self)),
          GraphQLField("facebookData", type: .scalar(JSON.self)),
          GraphQLField("uiOptions", type: .scalar(JSON.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(code: String? = nil, formId: String? = nil, formData: JSON? = nil, messengerData: JSON? = nil, twitterData: JSON? = nil, facebookData: JSON? = nil, uiOptions: JSON? = nil) {
          self.init(snapshot: ["__typename": "Integration", "code": code, "formId": formId, "formData": formData, "messengerData": messengerData, "twitterData": twitterData, "facebookData": facebookData, "uiOptions": uiOptions])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var code: String? {
          get {
            return snapshot["code"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "code")
          }
        }

        public var formId: String? {
          get {
            return snapshot["formId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "formId")
          }
        }

        public var formData: JSON? {
          get {
            return snapshot["formData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "formData")
          }
        }

        public var messengerData: JSON? {
          get {
            return snapshot["messengerData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "messengerData")
          }
        }

        public var twitterData: JSON? {
          get {
            return snapshot["twitterData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "twitterData")
          }
        }

        public var facebookData: JSON? {
          get {
            return snapshot["facebookData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "facebookData")
          }
        }

        public var uiOptions: JSON? {
          get {
            return snapshot["uiOptions"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "uiOptions")
          }
        }
      }
    }
  }
}

public final class TagsQuery: GraphQLQuery {
  public static let operationString =
    "query tags($type: String) {\n  tags(type: $type) {\n    __typename\n    ...TagDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(TagDetail.fragmentString) }

  public var type: String?

  public init(type: String? = nil) {
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("tags", arguments: ["type": GraphQLVariable("type")], type: .list(.object(Tag.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(tags: [Tag?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "tags": tags.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }])
    }

    public var tags: [Tag?]? {
      get {
        return (snapshot["tags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Tag?] in value.map { (value: Snapshot?) -> Tag? in value.flatMap { (value: Snapshot) -> Tag in Tag(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }, forKey: "tags")
      }
    }

    public struct Tag: GraphQLSelectionSet {
      public static let possibleTypes = ["Tag"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("type", type: .scalar(String.self)),
        GraphQLField("colorCode", type: .scalar(String.self)),
        GraphQLField("objectCount", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String? = nil, type: String? = nil, colorCode: String? = nil, objectCount: Int? = nil) {
        self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "type": type, "colorCode": colorCode, "objectCount": objectCount])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var type: String? {
        get {
          return snapshot["type"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var colorCode: String? {
        get {
          return snapshot["colorCode"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "colorCode")
        }
      }

      public var objectCount: Int? {
        get {
          return snapshot["objectCount"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "objectCount")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var tagDetail: TagDetail {
          get {
            return TagDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class ConversationsQuery: GraphQLQuery {
  public static let operationString =
    "query Conversations {\n  conversations {\n    __typename\n    ...ConversationDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(ConversationDetail.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversations", type: .list(.object(Conversation.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversations: [Conversation?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "conversations": conversations.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }])
    }

    public var conversations: [Conversation?]? {
      get {
        return (snapshot["conversations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Conversation?] in value.map { (value: Snapshot?) -> Conversation? in value.flatMap { (value: Snapshot) -> Conversation in Conversation(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }, forKey: "conversations")
      }
    }

    public struct Conversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(SDate.self)),
        GraphQLField("customerId", type: .scalar(String.self)),
        GraphQLField("customer", type: .object(Customer.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, content: String? = nil, createdAt: SDate? = nil, customerId: String? = nil, customer: Customer? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "_id": id, "content": content, "createdAt": createdAt, "customerId": customerId, "customer": customer.flatMap { (value: Customer) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var createdAt: SDate? {
        get {
          return snapshot["createdAt"] as? SDate
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var customerId: String? {
        get {
          return snapshot["customerId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "customerId")
        }
      }

      public var customer: Customer? {
        get {
          return (snapshot["customer"] as? Snapshot).flatMap { Customer(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "customer")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var conversationDetail: ConversationDetail {
          get {
            return ConversationDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Customer: GraphQLSelectionSet {
        public static let possibleTypes = ["Customer"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("integrationId", type: .scalar(String.self)),
          GraphQLField("firstName", type: .scalar(String.self)),
          GraphQLField("lastName", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("isUser", type: .scalar(Bool.self)),
          GraphQLField("createdAt", type: .scalar(SDate.self)),
          GraphQLField("remoteAddress", type: .scalar(String.self)),
          GraphQLField("internalNotes", type: .scalar(JSON.self)),
          GraphQLField("location", type: .scalar(JSON.self)),
          GraphQLField("customFieldsData", type: .scalar(JSON.self)),
          GraphQLField("messengerData", type: .scalar(JSON.self)),
          GraphQLField("twitterData", type: .scalar(JSON.self)),
          GraphQLField("facebookData", type: .scalar(JSON.self)),
          GraphQLField("getIntegrationData", type: .scalar(JSON.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(integrationId: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, isUser: Bool? = nil, createdAt: SDate? = nil, remoteAddress: String? = nil, internalNotes: JSON? = nil, location: JSON? = nil, customFieldsData: JSON? = nil, messengerData: JSON? = nil, twitterData: JSON? = nil, facebookData: JSON? = nil, getIntegrationData: JSON? = nil) {
          self.init(snapshot: ["__typename": "Customer", "integrationId": integrationId, "firstName": firstName, "lastName": lastName, "email": email, "phone": phone, "isUser": isUser, "createdAt": createdAt, "remoteAddress": remoteAddress, "internalNotes": internalNotes, "location": location, "customFieldsData": customFieldsData, "messengerData": messengerData, "twitterData": twitterData, "facebookData": facebookData, "getIntegrationData": getIntegrationData])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var integrationId: String? {
          get {
            return snapshot["integrationId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "integrationId")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["firstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["lastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var phone: String? {
          get {
            return snapshot["phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phone")
          }
        }

        public var isUser: Bool? {
          get {
            return snapshot["isUser"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isUser")
          }
        }

        public var createdAt: SDate? {
          get {
            return snapshot["createdAt"] as? SDate
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var remoteAddress: String? {
          get {
            return snapshot["remoteAddress"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "remoteAddress")
          }
        }

        public var internalNotes: JSON? {
          get {
            return snapshot["internalNotes"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "internalNotes")
          }
        }

        public var location: JSON? {
          get {
            return snapshot["location"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "location")
          }
        }

        public var customFieldsData: JSON? {
          get {
            return snapshot["customFieldsData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "customFieldsData")
          }
        }

        public var messengerData: JSON? {
          get {
            return snapshot["messengerData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "messengerData")
          }
        }

        public var twitterData: JSON? {
          get {
            return snapshot["twitterData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "twitterData")
          }
        }

        public var facebookData: JSON? {
          get {
            return snapshot["facebookData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "facebookData")
          }
        }

        public var getIntegrationData: JSON? {
          get {
            return snapshot["getIntegrationData"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "getIntegrationData")
          }
        }
      }
    }
  }
}

public final class ObjectsQuery: GraphQLQuery {
  public static let operationString =
    "query objects($limit: Int, $channelId: String, $status: String, $unassigned: String, $brandId: String, $tag: String, $integrationType: String, $participating: String, $starred: String, $ids: [String], $startDate: String, $endDate: String) {\n  conversations(limit: $limit, channelId: $channelId, status: $status, unassigned: $unassigned, brandId: $brandId, tag: $tag, integrationType: $integrationType, participating: $participating, starred: $starred, ids: $ids, startDate: $startDate, endDate: $endDate) {\n    __typename\n    ...ObjectDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(ObjectDetail.fragmentString) }

  public var limit: Int?
  public var channelId: String?
  public var status: String?
  public var unassigned: String?
  public var brandId: String?
  public var tag: String?
  public var integrationType: String?
  public var participating: String?
  public var starred: String?
  public var ids: [String?]?
  public var startDate: String?
  public var endDate: String?

  public init(limit: Int? = nil, channelId: String? = nil, status: String? = nil, unassigned: String? = nil, brandId: String? = nil, tag: String? = nil, integrationType: String? = nil, participating: String? = nil, starred: String? = nil, ids: [String?]? = nil, startDate: String? = nil, endDate: String? = nil) {
    self.limit = limit
    self.channelId = channelId
    self.status = status
    self.unassigned = unassigned
    self.brandId = brandId
    self.tag = tag
    self.integrationType = integrationType
    self.participating = participating
    self.starred = starred
    self.ids = ids
    self.startDate = startDate
    self.endDate = endDate
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "channelId": channelId, "status": status, "unassigned": unassigned, "brandId": brandId, "tag": tag, "integrationType": integrationType, "participating": participating, "starred": starred, "ids": ids, "startDate": startDate, "endDate": endDate]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversations", arguments: ["limit": GraphQLVariable("limit"), "channelId": GraphQLVariable("channelId"), "status": GraphQLVariable("status"), "unassigned": GraphQLVariable("unassigned"), "brandId": GraphQLVariable("brandId"), "tag": GraphQLVariable("tag"), "integrationType": GraphQLVariable("integrationType"), "participating": GraphQLVariable("participating"), "starred": GraphQLVariable("starred"), "ids": GraphQLVariable("ids"), "startDate": GraphQLVariable("startDate"), "endDate": GraphQLVariable("endDate")], type: .list(.object(Conversation.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversations: [Conversation?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "conversations": conversations.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }])
    }

    public var conversations: [Conversation?]? {
      get {
        return (snapshot["conversations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Conversation?] in value.map { (value: Snapshot?) -> Conversation? in value.flatMap { (value: Snapshot) -> Conversation in Conversation(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }, forKey: "conversations")
      }
    }

    public struct Conversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(SDate.self)),
        GraphQLField("status", type: .scalar(String.self)),
        GraphQLField("assignedUser", type: .object(AssignedUser.selections)),
        GraphQLField("integration", type: .object(Integration.selections)),
        GraphQLField("customer", type: .object(Customer.selections)),
        GraphQLField("tagIds", type: .list(.scalar(String.self))),
        GraphQLField("tags", type: .list(.object(Tag.selections))),
        GraphQLField("readUserIds", type: .list(.scalar(String.self))),
        GraphQLField("twitterData", type: .object(TwitterDatum.selections)),
        GraphQLField("facebookData", type: .object(FacebookDatum.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, content: String? = nil, updatedAt: SDate? = nil, status: String? = nil, assignedUser: AssignedUser? = nil, integration: Integration? = nil, customer: Customer? = nil, tagIds: [String?]? = nil, tags: [Tag?]? = nil, readUserIds: [String?]? = nil, twitterData: TwitterDatum? = nil, facebookData: FacebookDatum? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "_id": id, "content": content, "updatedAt": updatedAt, "status": status, "assignedUser": assignedUser.flatMap { (value: AssignedUser) -> Snapshot in value.snapshot }, "integration": integration.flatMap { (value: Integration) -> Snapshot in value.snapshot }, "customer": customer.flatMap { (value: Customer) -> Snapshot in value.snapshot }, "tagIds": tagIds, "tags": tags.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }, "readUserIds": readUserIds, "twitterData": twitterData.flatMap { (value: TwitterDatum) -> Snapshot in value.snapshot }, "facebookData": facebookData.flatMap { (value: FacebookDatum) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var updatedAt: SDate? {
        get {
          return snapshot["updatedAt"] as? SDate
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var status: String? {
        get {
          return snapshot["status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var assignedUser: AssignedUser? {
        get {
          return (snapshot["assignedUser"] as? Snapshot).flatMap { AssignedUser(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "assignedUser")
        }
      }

      public var integration: Integration? {
        get {
          return (snapshot["integration"] as? Snapshot).flatMap { Integration(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "integration")
        }
      }

      public var customer: Customer? {
        get {
          return (snapshot["customer"] as? Snapshot).flatMap { Customer(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "customer")
        }
      }

      public var tagIds: [String?]? {
        get {
          return snapshot["tagIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tagIds")
        }
      }

      public var tags: [Tag?]? {
        get {
          return (snapshot["tags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Tag?] in value.map { (value: Snapshot?) -> Tag? in value.flatMap { (value: Snapshot) -> Tag in Tag(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }, forKey: "tags")
        }
      }

      public var readUserIds: [String?]? {
        get {
          return snapshot["readUserIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "readUserIds")
        }
      }

      public var twitterData: TwitterDatum? {
        get {
          return (snapshot["twitterData"] as? Snapshot).flatMap { TwitterDatum(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "twitterData")
        }
      }

      public var facebookData: FacebookDatum? {
        get {
          return (snapshot["facebookData"] as? Snapshot).flatMap { FacebookDatum(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "facebookData")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var objectDetail: ObjectDetail {
          get {
            return ObjectDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct AssignedUser: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("details", type: .object(Detail.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, details: Detail? = nil) {
          self.init(snapshot: ["__typename": "User", "_id": id, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var details: Detail? {
          get {
            return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "details")
          }
        }

        public struct Detail: GraphQLSelectionSet {
          public static let possibleTypes = ["UserDetailsType"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("avatar", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(avatar: String? = nil) {
            self.init(snapshot: ["__typename": "UserDetailsType", "avatar": avatar])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var avatar: String? {
            get {
              return snapshot["avatar"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "avatar")
            }
          }
        }
      }

      public struct Integration: GraphQLSelectionSet {
        public static let possibleTypes = ["Integration"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("kind", type: .nonNull(.scalar(String.self))),
          GraphQLField("brand", type: .object(Brand.selections)),
          GraphQLField("channels", type: .list(.object(Channel.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, kind: String, brand: Brand? = nil, channels: [Channel?]? = nil) {
          self.init(snapshot: ["__typename": "Integration", "_id": id, "kind": kind, "brand": brand.flatMap { (value: Brand) -> Snapshot in value.snapshot }, "channels": channels.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var kind: String {
          get {
            return snapshot["kind"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "kind")
          }
        }

        public var brand: Brand? {
          get {
            return (snapshot["brand"] as? Snapshot).flatMap { Brand(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "brand")
          }
        }

        public var channels: [Channel?]? {
          get {
            return (snapshot["channels"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Channel?] in value.map { (value: Snapshot?) -> Channel? in value.flatMap { (value: Snapshot) -> Channel in Channel(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }, forKey: "channels")
          }
        }

        public struct Brand: GraphQLSelectionSet {
          public static let possibleTypes = ["Brand"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, name: String? = nil) {
            self.init(snapshot: ["__typename": "Brand", "_id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Channel: GraphQLSelectionSet {
          public static let possibleTypes = ["Channel"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, name: String) {
            self.init(snapshot: ["__typename": "Channel", "_id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }

      public struct Customer: GraphQLSelectionSet {
        public static let possibleTypes = ["Customer"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .scalar(String.self)),
          GraphQLField("lastName", type: .scalar(String.self)),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("primaryEmail", type: .scalar(String.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("isUser", type: .scalar(Bool.self)),
          GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, email: String? = nil, primaryEmail: String? = nil, phone: String? = nil, isUser: Bool? = nil, visitorContactInfo: JSON? = nil) {
          self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "email": email, "primaryEmail": primaryEmail, "phone": phone, "isUser": isUser, "visitorContactInfo": visitorContactInfo])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["firstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["lastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var primaryEmail: String? {
          get {
            return snapshot["primaryEmail"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "primaryEmail")
          }
        }

        public var phone: String? {
          get {
            return snapshot["phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phone")
          }
        }

        public var isUser: Bool? {
          get {
            return snapshot["isUser"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isUser")
          }
        }

        public var visitorContactInfo: JSON? {
          get {
            return snapshot["visitorContactInfo"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "visitorContactInfo")
          }
        }
      }

      public struct Tag: GraphQLSelectionSet {
        public static let possibleTypes = ["Tag"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, name: String? = nil) {
          self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct TwitterDatum: GraphQLSelectionSet {
        public static let possibleTypes = ["TwitterData"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("isDirectMessage", type: .scalar(Bool.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(isDirectMessage: Bool? = nil) {
          self.init(snapshot: ["__typename": "TwitterData", "isDirectMessage": isDirectMessage])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var isDirectMessage: Bool? {
          get {
            return snapshot["isDirectMessage"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isDirectMessage")
          }
        }
      }

      public struct FacebookDatum: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationFacebookData"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("kind", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(kind: String? = nil) {
          self.init(snapshot: ["__typename": "ConversationFacebookData", "kind": kind])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var kind: String? {
          get {
            return snapshot["kind"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "kind")
          }
        }
      }
    }
  }
}

public final class ConversationCountsQuery: GraphQLQuery {
  public static let operationString =
    "query conversationCounts($limit: Int, $channelId: String, $status: String, $unassigned: String, $brandId: String, $tag: String, $integrationType: String, $participating: String, $starred: String, $ids: [String]) {\n  conversationCounts(limit: $limit, channelId: $channelId, status: $status, unassigned: $unassigned, brandId: $brandId, tag: $tag, integrationType: $integrationType, participating: $participating, starred: $starred, ids: $ids)\n}"

  public var limit: Int?
  public var channelId: String?
  public var status: String?
  public var unassigned: String?
  public var brandId: String?
  public var tag: String?
  public var integrationType: String?
  public var participating: String?
  public var starred: String?
  public var ids: [String?]?

  public init(limit: Int? = nil, channelId: String? = nil, status: String? = nil, unassigned: String? = nil, brandId: String? = nil, tag: String? = nil, integrationType: String? = nil, participating: String? = nil, starred: String? = nil, ids: [String?]? = nil) {
    self.limit = limit
    self.channelId = channelId
    self.status = status
    self.unassigned = unassigned
    self.brandId = brandId
    self.tag = tag
    self.integrationType = integrationType
    self.participating = participating
    self.starred = starred
    self.ids = ids
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "channelId": channelId, "status": status, "unassigned": unassigned, "brandId": brandId, "tag": tag, "integrationType": integrationType, "participating": participating, "starred": starred, "ids": ids]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationCounts", arguments: ["limit": GraphQLVariable("limit"), "channelId": GraphQLVariable("channelId"), "status": GraphQLVariable("status"), "unassigned": GraphQLVariable("unassigned"), "brandId": GraphQLVariable("brandId"), "tag": GraphQLVariable("tag"), "integrationType": GraphQLVariable("integrationType"), "participating": GraphQLVariable("participating"), "starred": GraphQLVariable("starred"), "ids": GraphQLVariable("ids")], type: .scalar(JSON.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationCounts: JSON? = nil) {
      self.init(snapshot: ["__typename": "Query", "conversationCounts": conversationCounts])
    }

    public var conversationCounts: JSON? {
      get {
        return snapshot["conversationCounts"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "conversationCounts")
      }
    }
  }
}

public final class UnreadCountQuery: GraphQLQuery {
  public static let operationString =
    "query unreadCount {\n  conversationsTotalUnreadCount\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationsTotalUnreadCount", type: .scalar(Int.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationsTotalUnreadCount: Int? = nil) {
      self.init(snapshot: ["__typename": "Query", "conversationsTotalUnreadCount": conversationsTotalUnreadCount])
    }

    public var conversationsTotalUnreadCount: Int? {
      get {
        return snapshot["conversationsTotalUnreadCount"] as? Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "conversationsTotalUnreadCount")
      }
    }
  }
}

public final class GetLastQuery: GraphQLQuery {
  public static let operationString =
    "query getLast {\n  conversationsGetLast {\n    __typename\n    ...ObjectDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(ObjectDetail.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationsGetLast", type: .object(ConversationsGetLast.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationsGetLast: ConversationsGetLast? = nil) {
      self.init(snapshot: ["__typename": "Query", "conversationsGetLast": conversationsGetLast.flatMap { (value: ConversationsGetLast) -> Snapshot in value.snapshot }])
    }

    public var conversationsGetLast: ConversationsGetLast? {
      get {
        return (snapshot["conversationsGetLast"] as? Snapshot).flatMap { ConversationsGetLast(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "conversationsGetLast")
      }
    }

    public struct ConversationsGetLast: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(SDate.self)),
        GraphQLField("status", type: .scalar(String.self)),
        GraphQLField("assignedUser", type: .object(AssignedUser.selections)),
        GraphQLField("integration", type: .object(Integration.selections)),
        GraphQLField("customer", type: .object(Customer.selections)),
        GraphQLField("tagIds", type: .list(.scalar(String.self))),
        GraphQLField("tags", type: .list(.object(Tag.selections))),
        GraphQLField("readUserIds", type: .list(.scalar(String.self))),
        GraphQLField("twitterData", type: .object(TwitterDatum.selections)),
        GraphQLField("facebookData", type: .object(FacebookDatum.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, content: String? = nil, updatedAt: SDate? = nil, status: String? = nil, assignedUser: AssignedUser? = nil, integration: Integration? = nil, customer: Customer? = nil, tagIds: [String?]? = nil, tags: [Tag?]? = nil, readUserIds: [String?]? = nil, twitterData: TwitterDatum? = nil, facebookData: FacebookDatum? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "_id": id, "content": content, "updatedAt": updatedAt, "status": status, "assignedUser": assignedUser.flatMap { (value: AssignedUser) -> Snapshot in value.snapshot }, "integration": integration.flatMap { (value: Integration) -> Snapshot in value.snapshot }, "customer": customer.flatMap { (value: Customer) -> Snapshot in value.snapshot }, "tagIds": tagIds, "tags": tags.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }, "readUserIds": readUserIds, "twitterData": twitterData.flatMap { (value: TwitterDatum) -> Snapshot in value.snapshot }, "facebookData": facebookData.flatMap { (value: FacebookDatum) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var updatedAt: SDate? {
        get {
          return snapshot["updatedAt"] as? SDate
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var status: String? {
        get {
          return snapshot["status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var assignedUser: AssignedUser? {
        get {
          return (snapshot["assignedUser"] as? Snapshot).flatMap { AssignedUser(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "assignedUser")
        }
      }

      public var integration: Integration? {
        get {
          return (snapshot["integration"] as? Snapshot).flatMap { Integration(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "integration")
        }
      }

      public var customer: Customer? {
        get {
          return (snapshot["customer"] as? Snapshot).flatMap { Customer(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "customer")
        }
      }

      public var tagIds: [String?]? {
        get {
          return snapshot["tagIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tagIds")
        }
      }

      public var tags: [Tag?]? {
        get {
          return (snapshot["tags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Tag?] in value.map { (value: Snapshot?) -> Tag? in value.flatMap { (value: Snapshot) -> Tag in Tag(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }, forKey: "tags")
        }
      }

      public var readUserIds: [String?]? {
        get {
          return snapshot["readUserIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "readUserIds")
        }
      }

      public var twitterData: TwitterDatum? {
        get {
          return (snapshot["twitterData"] as? Snapshot).flatMap { TwitterDatum(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "twitterData")
        }
      }

      public var facebookData: FacebookDatum? {
        get {
          return (snapshot["facebookData"] as? Snapshot).flatMap { FacebookDatum(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "facebookData")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var objectDetail: ObjectDetail {
          get {
            return ObjectDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct AssignedUser: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("details", type: .object(Detail.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, details: Detail? = nil) {
          self.init(snapshot: ["__typename": "User", "_id": id, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var details: Detail? {
          get {
            return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "details")
          }
        }

        public struct Detail: GraphQLSelectionSet {
          public static let possibleTypes = ["UserDetailsType"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("avatar", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(avatar: String? = nil) {
            self.init(snapshot: ["__typename": "UserDetailsType", "avatar": avatar])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var avatar: String? {
            get {
              return snapshot["avatar"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "avatar")
            }
          }
        }
      }

      public struct Integration: GraphQLSelectionSet {
        public static let possibleTypes = ["Integration"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("kind", type: .nonNull(.scalar(String.self))),
          GraphQLField("brand", type: .object(Brand.selections)),
          GraphQLField("channels", type: .list(.object(Channel.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, kind: String, brand: Brand? = nil, channels: [Channel?]? = nil) {
          self.init(snapshot: ["__typename": "Integration", "_id": id, "kind": kind, "brand": brand.flatMap { (value: Brand) -> Snapshot in value.snapshot }, "channels": channels.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var kind: String {
          get {
            return snapshot["kind"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "kind")
          }
        }

        public var brand: Brand? {
          get {
            return (snapshot["brand"] as? Snapshot).flatMap { Brand(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "brand")
          }
        }

        public var channels: [Channel?]? {
          get {
            return (snapshot["channels"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Channel?] in value.map { (value: Snapshot?) -> Channel? in value.flatMap { (value: Snapshot) -> Channel in Channel(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }, forKey: "channels")
          }
        }

        public struct Brand: GraphQLSelectionSet {
          public static let possibleTypes = ["Brand"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, name: String? = nil) {
            self.init(snapshot: ["__typename": "Brand", "_id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Channel: GraphQLSelectionSet {
          public static let possibleTypes = ["Channel"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: String, name: String) {
            self.init(snapshot: ["__typename": "Channel", "_id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return snapshot["_id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }

      public struct Customer: GraphQLSelectionSet {
        public static let possibleTypes = ["Customer"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .scalar(String.self)),
          GraphQLField("lastName", type: .scalar(String.self)),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("primaryEmail", type: .scalar(String.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("isUser", type: .scalar(Bool.self)),
          GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, email: String? = nil, primaryEmail: String? = nil, phone: String? = nil, isUser: Bool? = nil, visitorContactInfo: JSON? = nil) {
          self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "email": email, "primaryEmail": primaryEmail, "phone": phone, "isUser": isUser, "visitorContactInfo": visitorContactInfo])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["firstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["lastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }

        public var email: String? {
          get {
            return snapshot["email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var primaryEmail: String? {
          get {
            return snapshot["primaryEmail"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "primaryEmail")
          }
        }

        public var phone: String? {
          get {
            return snapshot["phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phone")
          }
        }

        public var isUser: Bool? {
          get {
            return snapshot["isUser"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isUser")
          }
        }

        public var visitorContactInfo: JSON? {
          get {
            return snapshot["visitorContactInfo"] as? JSON
          }
          set {
            snapshot.updateValue(newValue, forKey: "visitorContactInfo")
          }
        }
      }

      public struct Tag: GraphQLSelectionSet {
        public static let possibleTypes = ["Tag"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, name: String? = nil) {
          self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct TwitterDatum: GraphQLSelectionSet {
        public static let possibleTypes = ["TwitterData"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("isDirectMessage", type: .scalar(Bool.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(isDirectMessage: Bool? = nil) {
          self.init(snapshot: ["__typename": "TwitterData", "isDirectMessage": isDirectMessage])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var isDirectMessage: Bool? {
          get {
            return snapshot["isDirectMessage"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "isDirectMessage")
          }
        }
      }

      public struct FacebookDatum: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationFacebookData"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("kind", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(kind: String? = nil) {
          self.init(snapshot: ["__typename": "ConversationFacebookData", "kind": kind])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var kind: String? {
          get {
            return snapshot["kind"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "kind")
          }
        }
      }
    }
  }
}

public final class ConversationsChangeStatusMutation: GraphQLMutation {
  public static let operationString =
    "mutation conversationsChangeStatus($_ids: [String]!, $status: String!) {\n  conversationsChangeStatus(_ids: $_ids, status: $status) {\n    __typename\n    _id\n  }\n}"

  public var _ids: [String?]
  public var status: String

  public init(_ids: [String?], status: String) {
    self._ids = _ids
    self.status = status
  }

  public var variables: GraphQLMap? {
    return ["_ids": _ids, "status": status]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationsChangeStatus", arguments: ["_ids": GraphQLVariable("_ids"), "status": GraphQLVariable("status")], type: .list(.object(ConversationsChangeStatus.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationsChangeStatus: [ConversationsChangeStatus?]? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "conversationsChangeStatus": conversationsChangeStatus.flatMap { (value: [ConversationsChangeStatus?]) -> [Snapshot?] in value.map { (value: ConversationsChangeStatus?) -> Snapshot? in value.flatMap { (value: ConversationsChangeStatus) -> Snapshot in value.snapshot } } }])
    }

    public var conversationsChangeStatus: [ConversationsChangeStatus?]? {
      get {
        return (snapshot["conversationsChangeStatus"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [ConversationsChangeStatus?] in value.map { (value: Snapshot?) -> ConversationsChangeStatus? in value.flatMap { (value: Snapshot) -> ConversationsChangeStatus in ConversationsChangeStatus(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [ConversationsChangeStatus?]) -> [Snapshot?] in value.map { (value: ConversationsChangeStatus?) -> Snapshot? in value.flatMap { (value: ConversationsChangeStatus) -> Snapshot in value.snapshot } } }, forKey: "conversationsChangeStatus")
      }
    }

    public struct ConversationsChangeStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Conversation", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class ConversationsAssignMutation: GraphQLMutation {
  public static let operationString =
    "mutation conversationsAssign($conversationIds: [String]!, $assignedUserId: String) {\n  conversationsAssign(conversationIds: $conversationIds, assignedUserId: $assignedUserId) {\n    __typename\n    _id\n  }\n}"

  public var conversationIds: [String?]
  public var assignedUserId: String?

  public init(conversationIds: [String?], assignedUserId: String? = nil) {
    self.conversationIds = conversationIds
    self.assignedUserId = assignedUserId
  }

  public var variables: GraphQLMap? {
    return ["conversationIds": conversationIds, "assignedUserId": assignedUserId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationsAssign", arguments: ["conversationIds": GraphQLVariable("conversationIds"), "assignedUserId": GraphQLVariable("assignedUserId")], type: .list(.object(ConversationsAssign.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationsAssign: [ConversationsAssign?]? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "conversationsAssign": conversationsAssign.flatMap { (value: [ConversationsAssign?]) -> [Snapshot?] in value.map { (value: ConversationsAssign?) -> Snapshot? in value.flatMap { (value: ConversationsAssign) -> Snapshot in value.snapshot } } }])
    }

    public var conversationsAssign: [ConversationsAssign?]? {
      get {
        return (snapshot["conversationsAssign"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [ConversationsAssign?] in value.map { (value: Snapshot?) -> ConversationsAssign? in value.flatMap { (value: Snapshot) -> ConversationsAssign in ConversationsAssign(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [ConversationsAssign?]) -> [Snapshot?] in value.map { (value: ConversationsAssign?) -> Snapshot? in value.flatMap { (value: ConversationsAssign) -> Snapshot in value.snapshot } } }, forKey: "conversationsAssign")
      }
    }

    public struct ConversationsAssign: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Conversation", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class ConversationMarkAsReadMutation: GraphQLMutation {
  public static let operationString =
    "mutation ConversationMarkAsRead($id: String) {\n  conversationMarkAsRead(_id: $id) {\n    __typename\n    _id\n  }\n}"

  public var id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("conversationMarkAsRead", arguments: ["_id": GraphQLVariable("id")], type: .object(ConversationMarkAsRead.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(conversationMarkAsRead: ConversationMarkAsRead? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "conversationMarkAsRead": conversationMarkAsRead.flatMap { (value: ConversationMarkAsRead) -> Snapshot in value.snapshot }])
    }

    public var conversationMarkAsRead: ConversationMarkAsRead? {
      get {
        return (snapshot["conversationMarkAsRead"] as? Snapshot).flatMap { ConversationMarkAsRead(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "conversationMarkAsRead")
      }
    }

    public struct ConversationMarkAsRead: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "Conversation", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class GetUsersQuery: GraphQLQuery {
  public static let operationString =
    "query getUsers {\n  users {\n    __typename\n    ...UserData\n  }\n}"

  public static var requestString: String { return operationString.appending(UserData.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("users", type: .list(.object(User.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(users: [User?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "users": users.flatMap { (value: [User?]) -> [Snapshot?] in value.map { (value: User?) -> Snapshot? in value.flatMap { (value: User) -> Snapshot in value.snapshot } } }])
    }

    public var users: [User?]? {
      get {
        return (snapshot["users"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [User?] in value.map { (value: Snapshot?) -> User? in value.flatMap { (value: Snapshot) -> User in User(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [User?]) -> [Snapshot?] in value.map { (value: User?) -> Snapshot? in value.flatMap { (value: User) -> Snapshot in value.snapshot } } }, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .scalar(String.self)),
        GraphQLField("details", type: .object(Detail.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String? = nil, details: Detail? = nil) {
        self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var username: String? {
        get {
          return snapshot["username"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var details: Detail? {
        get {
          return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "details")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var userData: UserData {
          get {
            return UserData(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      public struct Detail: GraphQLSelectionSet {
        public static let possibleTypes = ["UserDetailsType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("fullName", type: .scalar(String.self)),
          GraphQLField("avatar", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(fullName: String? = nil, avatar: String? = nil) {
          self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName, "avatar": avatar])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fullName: String? {
          get {
            return snapshot["fullName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "fullName")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }
      }
    }
  }
}

public final class UsersChangePasswordMutation: GraphQLMutation {
  public static let operationString =
    "mutation usersChangePassword($currentPassword: String!, $newPassword: String!) {\n  usersChangePassword(currentPassword: $currentPassword, newPassword: $newPassword) {\n    __typename\n    _id\n  }\n}"

  public var currentPassword: String
  public var newPassword: String

  public init(currentPassword: String, newPassword: String) {
    self.currentPassword = currentPassword
    self.newPassword = newPassword
  }

  public var variables: GraphQLMap? {
    return ["currentPassword": currentPassword, "newPassword": newPassword]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("usersChangePassword", arguments: ["currentPassword": GraphQLVariable("currentPassword"), "newPassword": GraphQLVariable("newPassword")], type: .object(UsersChangePassword.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(usersChangePassword: UsersChangePassword? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "usersChangePassword": usersChangePassword.flatMap { (value: UsersChangePassword) -> Snapshot in value.snapshot }])
    }

    public var usersChangePassword: UsersChangePassword? {
      get {
        return (snapshot["usersChangePassword"] as? Snapshot).flatMap { UsersChangePassword(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "usersChangePassword")
      }
    }

    public struct UsersChangePassword: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "User", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class UsersConfigEmailSignaturesMutation: GraphQLMutation {
  public static let operationString =
    "mutation usersConfigEmailSignatures($signatures: [EmailSignature]) {\n  usersConfigEmailSignatures(signatures: $signatures) {\n    __typename\n    _id\n  }\n}"

  public var signatures: [EmailSignature?]?

  public init(signatures: [EmailSignature?]? = nil) {
    self.signatures = signatures
  }

  public var variables: GraphQLMap? {
    return ["signatures": signatures]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("usersConfigEmailSignatures", arguments: ["signatures": GraphQLVariable("signatures")], type: .object(UsersConfigEmailSignature.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(usersConfigEmailSignatures: UsersConfigEmailSignature? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "usersConfigEmailSignatures": usersConfigEmailSignatures.flatMap { (value: UsersConfigEmailSignature) -> Snapshot in value.snapshot }])
    }

    public var usersConfigEmailSignatures: UsersConfigEmailSignature? {
      get {
        return (snapshot["usersConfigEmailSignatures"] as? Snapshot).flatMap { UsersConfigEmailSignature(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "usersConfigEmailSignatures")
      }
    }

    public struct UsersConfigEmailSignature: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "User", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class NotificationsGetConfigurationsQuery: GraphQLQuery {
  public static let operationString =
    "query notificationsGetConfigurations {\n  notificationsGetConfigurations {\n    __typename\n    ...NotificationConf\n  }\n}"

  public static var requestString: String { return operationString.appending(NotificationConf.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("notificationsGetConfigurations", type: .list(.object(NotificationsGetConfiguration.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(notificationsGetConfigurations: [NotificationsGetConfiguration?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "notificationsGetConfigurations": notificationsGetConfigurations.flatMap { (value: [NotificationsGetConfiguration?]) -> [Snapshot?] in value.map { (value: NotificationsGetConfiguration?) -> Snapshot? in value.flatMap { (value: NotificationsGetConfiguration) -> Snapshot in value.snapshot } } }])
    }

    public var notificationsGetConfigurations: [NotificationsGetConfiguration?]? {
      get {
        return (snapshot["notificationsGetConfigurations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [NotificationsGetConfiguration?] in value.map { (value: Snapshot?) -> NotificationsGetConfiguration? in value.flatMap { (value: Snapshot) -> NotificationsGetConfiguration in NotificationsGetConfiguration(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [NotificationsGetConfiguration?]) -> [Snapshot?] in value.map { (value: NotificationsGetConfiguration?) -> Snapshot? in value.flatMap { (value: NotificationsGetConfiguration) -> Snapshot in value.snapshot } } }, forKey: "notificationsGetConfigurations")
      }
    }

    public struct NotificationsGetConfiguration: GraphQLSelectionSet {
      public static let possibleTypes = ["NotificationConfiguration"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("notifType", type: .scalar(String.self)),
        GraphQLField("isAllowed", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, notifType: String? = nil, isAllowed: Bool? = nil) {
        self.init(snapshot: ["__typename": "NotificationConfiguration", "_id": id, "notifType": notifType, "isAllowed": isAllowed])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var notifType: String? {
        get {
          return snapshot["notifType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "notifType")
        }
      }

      public var isAllowed: Bool? {
        get {
          return snapshot["isAllowed"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "isAllowed")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var notificationConf: NotificationConf {
          get {
            return NotificationConf(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class NotificationsModulesQuery: GraphQLQuery {
  public static let operationString =
    "query notificationsModules {\n  notificationsModules\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("notificationsModules", type: .list(.scalar(JSON.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(notificationsModules: [JSON?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "notificationsModules": notificationsModules])
    }

    public var notificationsModules: [JSON?]? {
      get {
        return snapshot["notificationsModules"] as? [JSON?]
      }
      set {
        snapshot.updateValue(newValue, forKey: "notificationsModules")
      }
    }
  }
}

public final class UsersConfigGetNotificationByEmailMutation: GraphQLMutation {
  public static let operationString =
    "mutation usersConfigGetNotificationByEmail($isAllowed: Boolean) {\n  usersConfigGetNotificationByEmail(isAllowed: $isAllowed) {\n    __typename\n    _id\n  }\n}"

  public var isAllowed: Bool?

  public init(isAllowed: Bool? = nil) {
    self.isAllowed = isAllowed
  }

  public var variables: GraphQLMap? {
    return ["isAllowed": isAllowed]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("usersConfigGetNotificationByEmail", arguments: ["isAllowed": GraphQLVariable("isAllowed")], type: .object(UsersConfigGetNotificationByEmail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(usersConfigGetNotificationByEmail: UsersConfigGetNotificationByEmail? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "usersConfigGetNotificationByEmail": usersConfigGetNotificationByEmail.flatMap { (value: UsersConfigGetNotificationByEmail) -> Snapshot in value.snapshot }])
    }

    public var usersConfigGetNotificationByEmail: UsersConfigGetNotificationByEmail? {
      get {
        return (snapshot["usersConfigGetNotificationByEmail"] as? Snapshot).flatMap { UsersConfigGetNotificationByEmail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "usersConfigGetNotificationByEmail")
      }
    }

    public struct UsersConfigGetNotificationByEmail: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "User", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class NotificationsSaveConfigMutation: GraphQLMutation {
  public static let operationString =
    "mutation notificationsSaveConfig($notifType: String!, $isAllowed: Boolean) {\n  notificationsSaveConfig(notifType: $notifType, isAllowed: $isAllowed) {\n    __typename\n    _id\n  }\n}"

  public var notifType: String
  public var isAllowed: Bool?

  public init(notifType: String, isAllowed: Bool? = nil) {
    self.notifType = notifType
    self.isAllowed = isAllowed
  }

  public var variables: GraphQLMap? {
    return ["notifType": notifType, "isAllowed": isAllowed]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("notificationsSaveConfig", arguments: ["notifType": GraphQLVariable("notifType"), "isAllowed": GraphQLVariable("isAllowed")], type: .object(NotificationsSaveConfig.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(notificationsSaveConfig: NotificationsSaveConfig? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "notificationsSaveConfig": notificationsSaveConfig.flatMap { (value: NotificationsSaveConfig) -> Snapshot in value.snapshot }])
    }

    public var notificationsSaveConfig: NotificationsSaveConfig? {
      get {
        return (snapshot["notificationsSaveConfig"] as? Snapshot).flatMap { NotificationsSaveConfig(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "notificationsSaveConfig")
      }
    }

    public struct NotificationsSaveConfig: GraphQLSelectionSet {
      public static let possibleTypes = ["NotificationConfiguration"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "NotificationConfiguration", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public final class UserEmailSignaturesQuery: GraphQLQuery {
  public static let operationString =
    "query userEmailSignatures {\n  currentUser {\n    __typename\n    emailSignatures\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("currentUser", type: .object(CurrentUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(currentUser: CurrentUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "currentUser": currentUser.flatMap { (value: CurrentUser) -> Snapshot in value.snapshot }])
    }

    public var currentUser: CurrentUser? {
      get {
        return (snapshot["currentUser"] as? Snapshot).flatMap { CurrentUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "currentUser")
      }
    }

    public struct CurrentUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("emailSignatures", type: .scalar(JSON.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(emailSignatures: JSON? = nil) {
        self.init(snapshot: ["__typename": "User", "emailSignatures": emailSignatures])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var emailSignatures: JSON? {
        get {
          return snapshot["emailSignatures"] as? JSON
        }
        set {
          snapshot.updateValue(newValue, forKey: "emailSignatures")
        }
      }
    }
  }
}

public final class ChannelsOfMemberQuery: GraphQLQuery {
  public static let operationString =
    "query channelsOfMember($memberIds: [String]) {\n  channels(memberIds: $memberIds) {\n    __typename\n    ...ChannelObject\n  }\n}"

  public static var requestString: String { return operationString.appending(ChannelObject.fragmentString) }

  public var memberIds: [String?]?

  public init(memberIds: [String?]? = nil) {
    self.memberIds = memberIds
  }

  public var variables: GraphQLMap? {
    return ["memberIds": memberIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("channels", arguments: ["memberIds": GraphQLVariable("memberIds")], type: .list(.object(Channel.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(channels: [Channel?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "channels": channels.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }])
    }

    public var channels: [Channel?]? {
      get {
        return (snapshot["channels"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Channel?] in value.map { (value: Snapshot?) -> Channel? in value.flatMap { (value: Snapshot) -> Channel in Channel(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }, forKey: "channels")
      }
    }

    public struct Channel: GraphQLSelectionSet {
      public static let possibleTypes = ["Channel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("memberIds", type: .list(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String, description: String? = nil, memberIds: [String?]? = nil) {
        self.init(snapshot: ["__typename": "Channel", "_id": id, "name": name, "description": description, "memberIds": memberIds])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var memberIds: [String?]? {
        get {
          return snapshot["memberIds"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "memberIds")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var channelObject: ChannelObject {
          get {
            return ChannelObject(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class UserDetailQuery: GraphQLQuery {
  public static let operationString =
    "query userDetail($_id: String) {\n  userDetail(_id: $_id) {\n    __typename\n    _id\n    username\n    email\n    role\n    details {\n      __typename\n      avatar\n      fullName\n      position\n      location\n      description\n    }\n    links {\n      __typename\n      linkedIn\n      twitter\n      facebook\n      github\n      youtube\n      website\n    }\n  }\n}"

  public var _id: String?

  public init(_id: String? = nil) {
    self._id = _id
  }

  public var variables: GraphQLMap? {
    return ["_id": _id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("userDetail", arguments: ["_id": GraphQLVariable("_id")], type: .object(UserDetail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(userDetail: UserDetail? = nil) {
      self.init(snapshot: ["__typename": "Query", "userDetail": userDetail.flatMap { (value: UserDetail) -> Snapshot in value.snapshot }])
    }

    public var userDetail: UserDetail? {
      get {
        return (snapshot["userDetail"] as? Snapshot).flatMap { UserDetail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "userDetail")
      }
    }

    public struct UserDetail: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("username", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("role", type: .scalar(String.self)),
        GraphQLField("details", type: .object(Detail.selections)),
        GraphQLField("links", type: .object(Link.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, username: String? = nil, email: String? = nil, role: String? = nil, details: Detail? = nil, links: Link? = nil) {
        self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "email": email, "role": role, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var username: String? {
        get {
          return snapshot["username"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var role: String? {
        get {
          return snapshot["role"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "role")
        }
      }

      public var details: Detail? {
        get {
          return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "details")
        }
      }

      public var links: Link? {
        get {
          return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "links")
        }
      }

      public struct Detail: GraphQLSelectionSet {
        public static let possibleTypes = ["UserDetailsType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("fullName", type: .scalar(String.self)),
          GraphQLField("position", type: .scalar(String.self)),
          GraphQLField("location", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: String? = nil, fullName: String? = nil, position: String? = nil, location: String? = nil, description: String? = nil) {
          self.init(snapshot: ["__typename": "UserDetailsType", "avatar": avatar, "fullName": fullName, "position": position, "location": location, "description": description])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }

        public var fullName: String? {
          get {
            return snapshot["fullName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "fullName")
          }
        }

        public var position: String? {
          get {
            return snapshot["position"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "position")
          }
        }

        public var location: String? {
          get {
            return snapshot["location"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "location")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes = ["UserLinksType"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("linkedIn", type: .scalar(String.self)),
          GraphQLField("twitter", type: .scalar(String.self)),
          GraphQLField("facebook", type: .scalar(String.self)),
          GraphQLField("github", type: .scalar(String.self)),
          GraphQLField("youtube", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, github: String? = nil, youtube: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "UserLinksType", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "github": github, "youtube": youtube, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var linkedIn: String? {
          get {
            return snapshot["linkedIn"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "linkedIn")
          }
        }

        public var twitter: String? {
          get {
            return snapshot["twitter"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "twitter")
          }
        }

        public var facebook: String? {
          get {
            return snapshot["facebook"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "facebook")
          }
        }

        public var github: String? {
          get {
            return snapshot["github"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "github")
          }
        }

        public var youtube: String? {
          get {
            return snapshot["youtube"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "youtube")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }
      }
    }
  }
}

public final class UsersEditProfileMutation: GraphQLMutation {
  public static let operationString =
    "mutation usersEditProfile($username: String!, $email: String!, $details: UserDetails, $links: UserLinks, $password: String!) {\n  usersEditProfile(username: $username, email: $email, details: $details, links: $links, password: $password) {\n    __typename\n    _id\n  }\n}"

  public var username: String
  public var email: String
  public var details: UserDetails?
  public var links: UserLinks?
  public var password: String

  public init(username: String, email: String, details: UserDetails? = nil, links: UserLinks? = nil, password: String) {
    self.username = username
    self.email = email
    self.details = details
    self.links = links
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["username": username, "email": email, "details": details, "links": links, "password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("usersEditProfile", arguments: ["username": GraphQLVariable("username"), "email": GraphQLVariable("email"), "details": GraphQLVariable("details"), "links": GraphQLVariable("links"), "password": GraphQLVariable("password")], type: .object(UsersEditProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(usersEditProfile: UsersEditProfile? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "usersEditProfile": usersEditProfile.flatMap { (value: UsersEditProfile) -> Snapshot in value.snapshot }])
    }

    public var usersEditProfile: UsersEditProfile? {
      get {
        return (snapshot["usersEditProfile"] as? Snapshot).flatMap { UsersEditProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "usersEditProfile")
      }
    }

    public struct UsersEditProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String) {
        self.init(snapshot: ["__typename": "User", "_id": id])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }
    }
  }
}

public struct MessageDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment MessageDetail on ConversationMessage {\n  __typename\n  _id\n  content\n  attachments {\n    __typename\n    url\n    name\n    size\n    type\n  }\n  formWidgetData\n  conversationId\n  customerId\n  userId\n  internal\n  createdAt\n  user {\n    __typename\n    _id\n    username\n    email\n    role\n    getNotificationByEmail\n    details {\n      __typename\n      avatar\n    }\n  }\n}"

  public static let possibleTypes = ["ConversationMessage"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("content", type: .scalar(String.self)),
    GraphQLField("attachments", type: .list(.object(Attachment.selections))),
    GraphQLField("formWidgetData", type: .scalar(JSON.self)),
    GraphQLField("conversationId", type: .scalar(String.self)),
    GraphQLField("customerId", type: .scalar(String.self)),
    GraphQLField("userId", type: .scalar(String.self)),
    GraphQLField("internal", type: .scalar(Bool.self)),
    GraphQLField("createdAt", type: .scalar(SDate.self)),
    GraphQLField("user", type: .object(User.selections)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, content: String? = nil, attachments: [Attachment?]? = nil, formWidgetData: JSON? = nil, conversationId: String? = nil, customerId: String? = nil, userId: String? = nil, `internal`: Bool? = nil, createdAt: SDate? = nil, user: User? = nil) {
    self.init(snapshot: ["__typename": "ConversationMessage", "_id": id, "content": content, "attachments": attachments.flatMap { (value: [Attachment?]) -> [Snapshot?] in value.map { (value: Attachment?) -> Snapshot? in value.flatMap { (value: Attachment) -> Snapshot in value.snapshot } } }, "formWidgetData": formWidgetData, "conversationId": conversationId, "customerId": customerId, "userId": userId, "internal": `internal`, "createdAt": createdAt, "user": user.flatMap { (value: User) -> Snapshot in value.snapshot }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var content: String? {
    get {
      return snapshot["content"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "content")
    }
  }

  public var attachments: [Attachment?]? {
    get {
      return (snapshot["attachments"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Attachment?] in value.map { (value: Snapshot?) -> Attachment? in value.flatMap { (value: Snapshot) -> Attachment in Attachment(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Attachment?]) -> [Snapshot?] in value.map { (value: Attachment?) -> Snapshot? in value.flatMap { (value: Attachment) -> Snapshot in value.snapshot } } }, forKey: "attachments")
    }
  }

  public var formWidgetData: JSON? {
    get {
      return snapshot["formWidgetData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "formWidgetData")
    }
  }

  public var conversationId: String? {
    get {
      return snapshot["conversationId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "conversationId")
    }
  }

  public var customerId: String? {
    get {
      return snapshot["customerId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "customerId")
    }
  }

  public var userId: String? {
    get {
      return snapshot["userId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "userId")
    }
  }

  public var `internal`: Bool? {
    get {
      return snapshot["internal"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "internal")
    }
  }

  public var createdAt: SDate? {
    get {
      return snapshot["createdAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var user: User? {
    get {
      return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "user")
    }
  }

  public struct Attachment: GraphQLSelectionSet {
    public static let possibleTypes = ["Attachment"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("url", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
      GraphQLField("size", type: .scalar(Double.self)),
      GraphQLField("type", type: .nonNull(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(url: String, name: String, size: Double? = nil, type: String) {
      self.init(snapshot: ["__typename": "Attachment", "url": url, "name": name, "size": size, "type": type])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var url: String {
      get {
        return snapshot["url"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "url")
      }
    }

    public var name: String {
      get {
        return snapshot["name"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    public var size: Double? {
      get {
        return snapshot["size"] as? Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "size")
      }
    }

    public var type: String {
      get {
        return snapshot["type"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "type")
      }
    }
  }

  public struct User: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("username", type: .scalar(String.self)),
      GraphQLField("email", type: .scalar(String.self)),
      GraphQLField("role", type: .scalar(String.self)),
      GraphQLField("getNotificationByEmail", type: .scalar(Bool.self)),
      GraphQLField("details", type: .object(Detail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, username: String? = nil, email: String? = nil, role: String? = nil, getNotificationByEmail: Bool? = nil, details: Detail? = nil) {
      self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "email": email, "role": role, "getNotificationByEmail": getNotificationByEmail, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var username: String? {
      get {
        return snapshot["username"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "username")
      }
    }

    public var email: String? {
      get {
        return snapshot["email"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "email")
      }
    }

    public var role: String? {
      get {
        return snapshot["role"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "role")
      }
    }

    public var getNotificationByEmail: Bool? {
      get {
        return snapshot["getNotificationByEmail"] as? Bool
      }
      set {
        snapshot.updateValue(newValue, forKey: "getNotificationByEmail")
      }
    }

    public var details: Detail? {
      get {
        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "details")
      }
    }

    public struct Detail: GraphQLSelectionSet {
      public static let possibleTypes = ["UserDetailsType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("avatar", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(avatar: String? = nil) {
        self.init(snapshot: ["__typename": "UserDetailsType", "avatar": avatar])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }
    }
  }
}

public struct CompanyObj: GraphQLFragment {
  public static let fragmentString =
    "fragment CompanyObj on Company {\n  __typename\n  _id\n  createdAt\n  modifiedAt\n  avatar\n  primaryName\n  names\n  size\n  industry\n  plan\n  parentCompanyId\n  emails\n  primaryEmail\n  ownerId\n  phones\n  primaryPhone\n  leadStatus\n  lifecycleState\n  businessType\n  description\n  doNotDisturb\n  links {\n    __typename\n    linkedIn\n    twitter\n    facebook\n    github\n    youtube\n    website\n  }\n  owner {\n    __typename\n    ...UserData\n  }\n  parentCompany {\n    __typename\n    ...CompanyList\n  }\n  customFieldsData\n  tagIds\n  getTags {\n    __typename\n    _id\n    name\n    colorCode\n  }\n  customers {\n    __typename\n    _id\n    firstName\n    lastName\n    primaryEmail\n    primaryPhone\n  }\n  deals {\n    __typename\n    _id\n    companies {\n      __typename\n      _id\n      primaryName\n    }\n    customers {\n      __typename\n      _id\n      firstName\n      primaryEmail\n    }\n    products\n    amount\n    closeDate\n  }\n}"

  public static let possibleTypes = ["Company"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("createdAt", type: .scalar(SDate.self)),
    GraphQLField("modifiedAt", type: .scalar(SDate.self)),
    GraphQLField("avatar", type: .scalar(String.self)),
    GraphQLField("primaryName", type: .scalar(String.self)),
    GraphQLField("names", type: .list(.scalar(String.self))),
    GraphQLField("size", type: .scalar(Int.self)),
    GraphQLField("industry", type: .scalar(String.self)),
    GraphQLField("plan", type: .scalar(String.self)),
    GraphQLField("parentCompanyId", type: .scalar(String.self)),
    GraphQLField("emails", type: .list(.scalar(String.self))),
    GraphQLField("primaryEmail", type: .scalar(String.self)),
    GraphQLField("ownerId", type: .scalar(String.self)),
    GraphQLField("phones", type: .list(.scalar(String.self))),
    GraphQLField("primaryPhone", type: .scalar(String.self)),
    GraphQLField("leadStatus", type: .scalar(String.self)),
    GraphQLField("lifecycleState", type: .scalar(String.self)),
    GraphQLField("businessType", type: .scalar(String.self)),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("doNotDisturb", type: .scalar(String.self)),
    GraphQLField("links", type: .object(Link.selections)),
    GraphQLField("owner", type: .object(Owner.selections)),
    GraphQLField("parentCompany", type: .object(ParentCompany.selections)),
    GraphQLField("customFieldsData", type: .scalar(JSON.self)),
    GraphQLField("tagIds", type: .list(.scalar(String.self))),
    GraphQLField("getTags", type: .list(.object(GetTag.selections))),
    GraphQLField("customers", type: .list(.object(Customer.selections))),
    GraphQLField("deals", type: .list(.object(Deal.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, createdAt: SDate? = nil, modifiedAt: SDate? = nil, avatar: String? = nil, primaryName: String? = nil, names: [String?]? = nil, size: Int? = nil, industry: String? = nil, plan: String? = nil, parentCompanyId: String? = nil, emails: [String?]? = nil, primaryEmail: String? = nil, ownerId: String? = nil, phones: [String?]? = nil, primaryPhone: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, businessType: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: Link? = nil, owner: Owner? = nil, parentCompany: ParentCompany? = nil, customFieldsData: JSON? = nil, tagIds: [String?]? = nil, getTags: [GetTag?]? = nil, customers: [Customer?]? = nil, deals: [Deal?]? = nil) {
    self.init(snapshot: ["__typename": "Company", "_id": id, "createdAt": createdAt, "modifiedAt": modifiedAt, "avatar": avatar, "primaryName": primaryName, "names": names, "size": size, "industry": industry, "plan": plan, "parentCompanyId": parentCompanyId, "emails": emails, "primaryEmail": primaryEmail, "ownerId": ownerId, "phones": phones, "primaryPhone": primaryPhone, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "businessType": businessType, "description": description, "doNotDisturb": doNotDisturb, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }, "owner": owner.flatMap { (value: Owner) -> Snapshot in value.snapshot }, "parentCompany": parentCompany.flatMap { (value: ParentCompany) -> Snapshot in value.snapshot }, "customFieldsData": customFieldsData, "tagIds": tagIds, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, "customers": customers.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, "deals": deals.flatMap { (value: [Deal?]) -> [Snapshot?] in value.map { (value: Deal?) -> Snapshot? in value.flatMap { (value: Deal) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var createdAt: SDate? {
    get {
      return snapshot["createdAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var modifiedAt: SDate? {
    get {
      return snapshot["modifiedAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "modifiedAt")
    }
  }

  public var avatar: String? {
    get {
      return snapshot["avatar"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "avatar")
    }
  }

  public var primaryName: String? {
    get {
      return snapshot["primaryName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryName")
    }
  }

  public var names: [String?]? {
    get {
      return snapshot["names"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "names")
    }
  }

  public var size: Int? {
    get {
      return snapshot["size"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "size")
    }
  }

  public var industry: String? {
    get {
      return snapshot["industry"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "industry")
    }
  }

  public var plan: String? {
    get {
      return snapshot["plan"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "plan")
    }
  }

  public var parentCompanyId: String? {
    get {
      return snapshot["parentCompanyId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "parentCompanyId")
    }
  }

  public var emails: [String?]? {
    get {
      return snapshot["emails"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "emails")
    }
  }

  public var primaryEmail: String? {
    get {
      return snapshot["primaryEmail"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryEmail")
    }
  }

  public var ownerId: String? {
    get {
      return snapshot["ownerId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "ownerId")
    }
  }

  public var phones: [String?]? {
    get {
      return snapshot["phones"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "phones")
    }
  }

  public var primaryPhone: String? {
    get {
      return snapshot["primaryPhone"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryPhone")
    }
  }

  public var leadStatus: String? {
    get {
      return snapshot["leadStatus"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "leadStatus")
    }
  }

  public var lifecycleState: String? {
    get {
      return snapshot["lifecycleState"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lifecycleState")
    }
  }

  public var businessType: String? {
    get {
      return snapshot["businessType"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "businessType")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  public var doNotDisturb: String? {
    get {
      return snapshot["doNotDisturb"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "doNotDisturb")
    }
  }

  public var links: Link? {
    get {
      return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "links")
    }
  }

  public var owner: Owner? {
    get {
      return (snapshot["owner"] as? Snapshot).flatMap { Owner(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "owner")
    }
  }

  public var parentCompany: ParentCompany? {
    get {
      return (snapshot["parentCompany"] as? Snapshot).flatMap { ParentCompany(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "parentCompany")
    }
  }

  public var customFieldsData: JSON? {
    get {
      return snapshot["customFieldsData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "customFieldsData")
    }
  }

  public var tagIds: [String?]? {
    get {
      return snapshot["tagIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "tagIds")
    }
  }

  public var getTags: [GetTag?]? {
    get {
      return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
    }
  }

  public var customers: [Customer?]? {
    get {
      return (snapshot["customers"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Customer?] in value.map { (value: Snapshot?) -> Customer? in value.flatMap { (value: Snapshot) -> Customer in Customer(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, forKey: "customers")
    }
  }

  public var deals: [Deal?]? {
    get {
      return (snapshot["deals"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Deal?] in value.map { (value: Snapshot?) -> Deal? in value.flatMap { (value: Snapshot) -> Deal in Deal(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Deal?]) -> [Snapshot?] in value.map { (value: Deal?) -> Snapshot? in value.flatMap { (value: Deal) -> Snapshot in value.snapshot } } }, forKey: "deals")
    }
  }

  public struct Link: GraphQLSelectionSet {
    public static let possibleTypes = ["CompanyLinks"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("linkedIn", type: .scalar(String.self)),
      GraphQLField("twitter", type: .scalar(String.self)),
      GraphQLField("facebook", type: .scalar(String.self)),
      GraphQLField("github", type: .scalar(String.self)),
      GraphQLField("youtube", type: .scalar(String.self)),
      GraphQLField("website", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, github: String? = nil, youtube: String? = nil, website: String? = nil) {
      self.init(snapshot: ["__typename": "CompanyLinks", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "github": github, "youtube": youtube, "website": website])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var linkedIn: String? {
      get {
        return snapshot["linkedIn"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "linkedIn")
      }
    }

    public var twitter: String? {
      get {
        return snapshot["twitter"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "twitter")
      }
    }

    public var facebook: String? {
      get {
        return snapshot["facebook"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "facebook")
      }
    }

    public var github: String? {
      get {
        return snapshot["github"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "github")
      }
    }

    public var youtube: String? {
      get {
        return snapshot["youtube"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "youtube")
      }
    }

    public var website: String? {
      get {
        return snapshot["website"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "website")
      }
    }
  }

  public struct Owner: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("username", type: .scalar(String.self)),
      GraphQLField("details", type: .object(Detail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, username: String? = nil, details: Detail? = nil) {
      self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var username: String? {
      get {
        return snapshot["username"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "username")
      }
    }

    public var details: Detail? {
      get {
        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "details")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    public struct Fragments {
      public var snapshot: Snapshot

      public var userData: UserData {
        get {
          return UserData(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    public struct Detail: GraphQLSelectionSet {
      public static let possibleTypes = ["UserDetailsType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullName", type: .scalar(String.self)),
        GraphQLField("avatar", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(fullName: String? = nil, avatar: String? = nil) {
        self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName, "avatar": avatar])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fullName: String? {
        get {
          return snapshot["fullName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fullName")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }
    }
  }

  public struct ParentCompany: GraphQLSelectionSet {
    public static let possibleTypes = ["Company"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("avatar", type: .scalar(String.self)),
      GraphQLField("primaryName", type: .scalar(String.self)),
      GraphQLField("plan", type: .scalar(String.self)),
      GraphQLField("emails", type: .list(.scalar(String.self))),
      GraphQLField("phones", type: .list(.scalar(String.self))),
      GraphQLField("getTags", type: .list(.object(GetTag.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, avatar: String? = nil, primaryName: String? = nil, plan: String? = nil, emails: [String?]? = nil, phones: [String?]? = nil, getTags: [GetTag?]? = nil) {
      self.init(snapshot: ["__typename": "Company", "_id": id, "avatar": avatar, "primaryName": primaryName, "plan": plan, "emails": emails, "phones": phones, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var avatar: String? {
      get {
        return snapshot["avatar"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "avatar")
      }
    }

    public var primaryName: String? {
      get {
        return snapshot["primaryName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "primaryName")
      }
    }

    public var plan: String? {
      get {
        return snapshot["plan"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "plan")
      }
    }

    public var emails: [String?]? {
      get {
        return snapshot["emails"] as? [String?]
      }
      set {
        snapshot.updateValue(newValue, forKey: "emails")
      }
    }

    public var phones: [String?]? {
      get {
        return snapshot["phones"] as? [String?]
      }
      set {
        snapshot.updateValue(newValue, forKey: "phones")
      }
    }

    public var getTags: [GetTag?]? {
      get {
        return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    public struct Fragments {
      public var snapshot: Snapshot

      public var companyList: CompanyList {
        get {
          return CompanyList(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    public struct GetTag: GraphQLSelectionSet {
      public static let possibleTypes = ["Tag"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("colorCode", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String? = nil, colorCode: String? = nil) {
        self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var colorCode: String? {
        get {
          return snapshot["colorCode"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "colorCode")
        }
      }
    }
  }

  public struct GetTag: GraphQLSelectionSet {
    public static let possibleTypes = ["Tag"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("colorCode", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, name: String? = nil, colorCode: String? = nil) {
      self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    public var colorCode: String? {
      get {
        return snapshot["colorCode"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "colorCode")
      }
    }
  }

  public struct Customer: GraphQLSelectionSet {
    public static let possibleTypes = ["Customer"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("firstName", type: .scalar(String.self)),
      GraphQLField("lastName", type: .scalar(String.self)),
      GraphQLField("primaryEmail", type: .scalar(String.self)),
      GraphQLField("primaryPhone", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, firstName: String? = nil, lastName: String? = nil, primaryEmail: String? = nil, primaryPhone: String? = nil) {
      self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "primaryEmail": primaryEmail, "primaryPhone": primaryPhone])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var firstName: String? {
      get {
        return snapshot["firstName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "firstName")
      }
    }

    public var lastName: String? {
      get {
        return snapshot["lastName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "lastName")
      }
    }

    public var primaryEmail: String? {
      get {
        return snapshot["primaryEmail"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "primaryEmail")
      }
    }

    public var primaryPhone: String? {
      get {
        return snapshot["primaryPhone"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "primaryPhone")
      }
    }
  }

  public struct Deal: GraphQLSelectionSet {
    public static let possibleTypes = ["Deal"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("companies", type: .list(.object(Company.selections))),
      GraphQLField("customers", type: .list(.object(Customer.selections))),
      GraphQLField("products", type: .scalar(JSON.self)),
      GraphQLField("amount", type: .scalar(JSON.self)),
      GraphQLField("closeDate", type: .scalar(SDate.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, companies: [Company?]? = nil, customers: [Customer?]? = nil, products: JSON? = nil, amount: JSON? = nil, closeDate: SDate? = nil) {
      self.init(snapshot: ["__typename": "Deal", "_id": id, "companies": companies.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }, "customers": customers.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, "products": products, "amount": amount, "closeDate": closeDate])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var companies: [Company?]? {
      get {
        return (snapshot["companies"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Company?] in value.map { (value: Snapshot?) -> Company? in value.flatMap { (value: Snapshot) -> Company in Company(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }, forKey: "companies")
      }
    }

    public var customers: [Customer?]? {
      get {
        return (snapshot["customers"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Customer?] in value.map { (value: Snapshot?) -> Customer? in value.flatMap { (value: Snapshot) -> Customer in Customer(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Customer?]) -> [Snapshot?] in value.map { (value: Customer?) -> Snapshot? in value.flatMap { (value: Customer) -> Snapshot in value.snapshot } } }, forKey: "customers")
      }
    }

    public var products: JSON? {
      get {
        return snapshot["products"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "products")
      }
    }

    public var amount: JSON? {
      get {
        return snapshot["amount"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "amount")
      }
    }

    public var closeDate: SDate? {
      get {
        return snapshot["closeDate"] as? SDate
      }
      set {
        snapshot.updateValue(newValue, forKey: "closeDate")
      }
    }

    public struct Company: GraphQLSelectionSet {
      public static let possibleTypes = ["Company"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("primaryName", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, primaryName: String? = nil) {
        self.init(snapshot: ["__typename": "Company", "_id": id, "primaryName": primaryName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var primaryName: String? {
        get {
          return snapshot["primaryName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryName")
        }
      }
    }

    public struct Customer: GraphQLSelectionSet {
      public static let possibleTypes = ["Customer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("primaryEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, firstName: String? = nil, primaryEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "primaryEmail": primaryEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["firstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var primaryEmail: String? {
        get {
          return snapshot["primaryEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryEmail")
        }
      }
    }
  }
}

public struct CustomerList: GraphQLFragment {
  public static let fragmentString =
    "fragment CustomerList on Customer {\n  __typename\n  _id\n  firstName\n  lastName\n  avatar\n  visitorContactInfo\n  primaryEmail\n  primaryPhone\n  facebookData\n  twitterData\n  getTags {\n    __typename\n    _id\n    name\n    colorCode\n  }\n  conversations {\n    __typename\n    _id\n  }\n}"

  public static let possibleTypes = ["Customer"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("firstName", type: .scalar(String.self)),
    GraphQLField("lastName", type: .scalar(String.self)),
    GraphQLField("avatar", type: .scalar(String.self)),
    GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
    GraphQLField("primaryEmail", type: .scalar(String.self)),
    GraphQLField("primaryPhone", type: .scalar(String.self)),
    GraphQLField("facebookData", type: .scalar(JSON.self)),
    GraphQLField("twitterData", type: .scalar(JSON.self)),
    GraphQLField("getTags", type: .list(.object(GetTag.selections))),
    GraphQLField("conversations", type: .list(.object(Conversation.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, visitorContactInfo: JSON? = nil, primaryEmail: String? = nil, primaryPhone: String? = nil, facebookData: JSON? = nil, twitterData: JSON? = nil, getTags: [GetTag?]? = nil, conversations: [Conversation?]? = nil) {
    self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "visitorContactInfo": visitorContactInfo, "primaryEmail": primaryEmail, "primaryPhone": primaryPhone, "facebookData": facebookData, "twitterData": twitterData, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, "conversations": conversations.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var firstName: String? {
    get {
      return snapshot["firstName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return snapshot["lastName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastName")
    }
  }

  public var avatar: String? {
    get {
      return snapshot["avatar"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "avatar")
    }
  }

  public var visitorContactInfo: JSON? {
    get {
      return snapshot["visitorContactInfo"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "visitorContactInfo")
    }
  }

  public var primaryEmail: String? {
    get {
      return snapshot["primaryEmail"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryEmail")
    }
  }

  public var primaryPhone: String? {
    get {
      return snapshot["primaryPhone"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryPhone")
    }
  }

  public var facebookData: JSON? {
    get {
      return snapshot["facebookData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "facebookData")
    }
  }

  public var twitterData: JSON? {
    get {
      return snapshot["twitterData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "twitterData")
    }
  }

  public var getTags: [GetTag?]? {
    get {
      return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
    }
  }

  public var conversations: [Conversation?]? {
    get {
      return (snapshot["conversations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Conversation?] in value.map { (value: Snapshot?) -> Conversation? in value.flatMap { (value: Snapshot) -> Conversation in Conversation(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Conversation?]) -> [Snapshot?] in value.map { (value: Conversation?) -> Snapshot? in value.flatMap { (value: Conversation) -> Snapshot in value.snapshot } } }, forKey: "conversations")
    }
  }

  public struct GetTag: GraphQLSelectionSet {
    public static let possibleTypes = ["Tag"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("colorCode", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, name: String? = nil, colorCode: String? = nil) {
      self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    public var colorCode: String? {
      get {
        return snapshot["colorCode"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "colorCode")
      }
    }
  }

  public struct Conversation: GraphQLSelectionSet {
    public static let possibleTypes = ["Conversation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String) {
      self.init(snapshot: ["__typename": "Conversation", "_id": id])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }
  }
}

public struct CustomerDesc: GraphQLFragment {
  public static let fragmentString =
    "fragment CustomerDesc on Customer {\n  __typename\n  _id\n  firstName\n  lastName\n  avatar\n  visitorContactInfo\n  primaryEmail\n  primaryPhone\n}"

  public static let possibleTypes = ["Customer"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("firstName", type: .scalar(String.self)),
    GraphQLField("lastName", type: .scalar(String.self)),
    GraphQLField("avatar", type: .scalar(String.self)),
    GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
    GraphQLField("primaryEmail", type: .scalar(String.self)),
    GraphQLField("primaryPhone", type: .scalar(String.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, visitorContactInfo: JSON? = nil, primaryEmail: String? = nil, primaryPhone: String? = nil) {
    self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "visitorContactInfo": visitorContactInfo, "primaryEmail": primaryEmail, "primaryPhone": primaryPhone])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var firstName: String? {
    get {
      return snapshot["firstName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return snapshot["lastName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastName")
    }
  }

  public var avatar: String? {
    get {
      return snapshot["avatar"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "avatar")
    }
  }

  public var visitorContactInfo: JSON? {
    get {
      return snapshot["visitorContactInfo"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "visitorContactInfo")
    }
  }

  public var primaryEmail: String? {
    get {
      return snapshot["primaryEmail"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryEmail")
    }
  }

  public var primaryPhone: String? {
    get {
      return snapshot["primaryPhone"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryPhone")
    }
  }
}

public struct CustomerDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment CustomerDetail on Customer {\n  __typename\n  _id\n  firstName\n  lastName\n  email\n  phone\n  isUser\n  integrationId\n  createdAt\n  remoteAddress\n  location\n  visitorContactInfo\n  customFieldsData\n  twitterData\n  facebookData\n  ownerId\n  position\n  department\n  leadStatus\n  lifecycleState\n  hasAuthority\n  description\n  doNotDisturb\n  links {\n    __typename\n    linkedIn\n    twitter\n    facebook\n    github\n    youtube\n    website\n  }\n  owner {\n    __typename\n    details {\n      __typename\n      fullName\n    }\n  }\n  tagIds\n  getTags {\n    __typename\n    _id\n    name\n    colorCode\n  }\n}"

  public static let possibleTypes = ["Customer"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("firstName", type: .scalar(String.self)),
    GraphQLField("lastName", type: .scalar(String.self)),
    GraphQLField("email", type: .scalar(String.self)),
    GraphQLField("phone", type: .scalar(String.self)),
    GraphQLField("isUser", type: .scalar(Bool.self)),
    GraphQLField("integrationId", type: .scalar(String.self)),
    GraphQLField("createdAt", type: .scalar(SDate.self)),
    GraphQLField("remoteAddress", type: .scalar(String.self)),
    GraphQLField("location", type: .scalar(JSON.self)),
    GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
    GraphQLField("customFieldsData", type: .scalar(JSON.self)),
    GraphQLField("twitterData", type: .scalar(JSON.self)),
    GraphQLField("facebookData", type: .scalar(JSON.self)),
    GraphQLField("ownerId", type: .scalar(String.self)),
    GraphQLField("position", type: .scalar(String.self)),
    GraphQLField("department", type: .scalar(String.self)),
    GraphQLField("leadStatus", type: .scalar(String.self)),
    GraphQLField("lifecycleState", type: .scalar(String.self)),
    GraphQLField("hasAuthority", type: .scalar(String.self)),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("doNotDisturb", type: .scalar(String.self)),
    GraphQLField("links", type: .object(Link.selections)),
    GraphQLField("owner", type: .object(Owner.selections)),
    GraphQLField("tagIds", type: .list(.scalar(String.self))),
    GraphQLField("getTags", type: .list(.object(GetTag.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, isUser: Bool? = nil, integrationId: String? = nil, createdAt: SDate? = nil, remoteAddress: String? = nil, location: JSON? = nil, visitorContactInfo: JSON? = nil, customFieldsData: JSON? = nil, twitterData: JSON? = nil, facebookData: JSON? = nil, ownerId: String? = nil, position: String? = nil, department: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, hasAuthority: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: Link? = nil, owner: Owner? = nil, tagIds: [String?]? = nil, getTags: [GetTag?]? = nil) {
    self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "email": email, "phone": phone, "isUser": isUser, "integrationId": integrationId, "createdAt": createdAt, "remoteAddress": remoteAddress, "location": location, "visitorContactInfo": visitorContactInfo, "customFieldsData": customFieldsData, "twitterData": twitterData, "facebookData": facebookData, "ownerId": ownerId, "position": position, "department": department, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "hasAuthority": hasAuthority, "description": description, "doNotDisturb": doNotDisturb, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }, "owner": owner.flatMap { (value: Owner) -> Snapshot in value.snapshot }, "tagIds": tagIds, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var firstName: String? {
    get {
      return snapshot["firstName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return snapshot["lastName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastName")
    }
  }

  public var email: String? {
    get {
      return snapshot["email"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "email")
    }
  }

  public var phone: String? {
    get {
      return snapshot["phone"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "phone")
    }
  }

  public var isUser: Bool? {
    get {
      return snapshot["isUser"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "isUser")
    }
  }

  public var integrationId: String? {
    get {
      return snapshot["integrationId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "integrationId")
    }
  }

  public var createdAt: SDate? {
    get {
      return snapshot["createdAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var remoteAddress: String? {
    get {
      return snapshot["remoteAddress"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "remoteAddress")
    }
  }

  public var location: JSON? {
    get {
      return snapshot["location"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "location")
    }
  }

  public var visitorContactInfo: JSON? {
    get {
      return snapshot["visitorContactInfo"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "visitorContactInfo")
    }
  }

  public var customFieldsData: JSON? {
    get {
      return snapshot["customFieldsData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "customFieldsData")
    }
  }

  public var twitterData: JSON? {
    get {
      return snapshot["twitterData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "twitterData")
    }
  }

  public var facebookData: JSON? {
    get {
      return snapshot["facebookData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "facebookData")
    }
  }

  public var ownerId: String? {
    get {
      return snapshot["ownerId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "ownerId")
    }
  }

  public var position: String? {
    get {
      return snapshot["position"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "position")
    }
  }

  public var department: String? {
    get {
      return snapshot["department"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "department")
    }
  }

  public var leadStatus: String? {
    get {
      return snapshot["leadStatus"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "leadStatus")
    }
  }

  public var lifecycleState: String? {
    get {
      return snapshot["lifecycleState"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lifecycleState")
    }
  }

  public var hasAuthority: String? {
    get {
      return snapshot["hasAuthority"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "hasAuthority")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  public var doNotDisturb: String? {
    get {
      return snapshot["doNotDisturb"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "doNotDisturb")
    }
  }

  public var links: Link? {
    get {
      return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "links")
    }
  }

  public var owner: Owner? {
    get {
      return (snapshot["owner"] as? Snapshot).flatMap { Owner(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "owner")
    }
  }

  public var tagIds: [String?]? {
    get {
      return snapshot["tagIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "tagIds")
    }
  }

  public var getTags: [GetTag?]? {
    get {
      return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
    }
  }

  public struct Link: GraphQLSelectionSet {
    public static let possibleTypes = ["CustomerLinks"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("linkedIn", type: .scalar(String.self)),
      GraphQLField("twitter", type: .scalar(String.self)),
      GraphQLField("facebook", type: .scalar(String.self)),
      GraphQLField("github", type: .scalar(String.self)),
      GraphQLField("youtube", type: .scalar(String.self)),
      GraphQLField("website", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, github: String? = nil, youtube: String? = nil, website: String? = nil) {
      self.init(snapshot: ["__typename": "CustomerLinks", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "github": github, "youtube": youtube, "website": website])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var linkedIn: String? {
      get {
        return snapshot["linkedIn"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "linkedIn")
      }
    }

    public var twitter: String? {
      get {
        return snapshot["twitter"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "twitter")
      }
    }

    public var facebook: String? {
      get {
        return snapshot["facebook"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "facebook")
      }
    }

    public var github: String? {
      get {
        return snapshot["github"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "github")
      }
    }

    public var youtube: String? {
      get {
        return snapshot["youtube"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "youtube")
      }
    }

    public var website: String? {
      get {
        return snapshot["website"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "website")
      }
    }
  }

  public struct Owner: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("details", type: .object(Detail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(details: Detail? = nil) {
      self.init(snapshot: ["__typename": "User", "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var details: Detail? {
      get {
        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "details")
      }
    }

    public struct Detail: GraphQLSelectionSet {
      public static let possibleTypes = ["UserDetailsType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullName", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(fullName: String? = nil) {
        self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fullName: String? {
        get {
          return snapshot["fullName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fullName")
        }
      }
    }
  }

  public struct GetTag: GraphQLSelectionSet {
    public static let possibleTypes = ["Tag"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("colorCode", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, name: String? = nil, colorCode: String? = nil) {
      self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    public var colorCode: String? {
      get {
        return snapshot["colorCode"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "colorCode")
      }
    }
  }
}

public struct CompanyList: GraphQLFragment {
  public static let fragmentString =
    "fragment CompanyList on Company {\n  __typename\n  _id\n  avatar\n  primaryName\n  plan\n  emails\n  phones\n  getTags {\n    __typename\n    _id\n    name\n    colorCode\n  }\n}"

  public static let possibleTypes = ["Company"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("avatar", type: .scalar(String.self)),
    GraphQLField("primaryName", type: .scalar(String.self)),
    GraphQLField("plan", type: .scalar(String.self)),
    GraphQLField("emails", type: .list(.scalar(String.self))),
    GraphQLField("phones", type: .list(.scalar(String.self))),
    GraphQLField("getTags", type: .list(.object(GetTag.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, avatar: String? = nil, primaryName: String? = nil, plan: String? = nil, emails: [String?]? = nil, phones: [String?]? = nil, getTags: [GetTag?]? = nil) {
    self.init(snapshot: ["__typename": "Company", "_id": id, "avatar": avatar, "primaryName": primaryName, "plan": plan, "emails": emails, "phones": phones, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var avatar: String? {
    get {
      return snapshot["avatar"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "avatar")
    }
  }

  public var primaryName: String? {
    get {
      return snapshot["primaryName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryName")
    }
  }

  public var plan: String? {
    get {
      return snapshot["plan"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "plan")
    }
  }

  public var emails: [String?]? {
    get {
      return snapshot["emails"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "emails")
    }
  }

  public var phones: [String?]? {
    get {
      return snapshot["phones"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "phones")
    }
  }

  public var getTags: [GetTag?]? {
    get {
      return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
    }
  }

  public struct GetTag: GraphQLSelectionSet {
    public static let possibleTypes = ["Tag"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("colorCode", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, name: String? = nil, colorCode: String? = nil) {
      self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    public var colorCode: String? {
      get {
        return snapshot["colorCode"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "colorCode")
      }
    }
  }
}

public struct CompanyDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment CompanyDetail on Company {\n  __typename\n  _id\n  createdAt\n  modifiedAt\n  avatar\n  primaryName\n  names\n  size\n  industry\n  plan\n  parentCompanyId\n  emails\n  ownerId\n  phones\n  leadStatus\n  lifecycleState\n  businessType\n  description\n  doNotDisturb\n  links {\n    __typename\n    linkedIn\n    twitter\n    facebook\n    github\n    youtube\n    website\n  }\n  owner {\n    __typename\n    ...UserData\n  }\n  parentCompany {\n    __typename\n    _id\n    primaryName\n  }\n  customFieldsData\n  tagIds\n  getTags {\n    __typename\n    _id\n    name\n    colorCode\n  }\n}"

  public static let possibleTypes = ["Company"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("createdAt", type: .scalar(SDate.self)),
    GraphQLField("modifiedAt", type: .scalar(SDate.self)),
    GraphQLField("avatar", type: .scalar(String.self)),
    GraphQLField("primaryName", type: .scalar(String.self)),
    GraphQLField("names", type: .list(.scalar(String.self))),
    GraphQLField("size", type: .scalar(Int.self)),
    GraphQLField("industry", type: .scalar(String.self)),
    GraphQLField("plan", type: .scalar(String.self)),
    GraphQLField("parentCompanyId", type: .scalar(String.self)),
    GraphQLField("emails", type: .list(.scalar(String.self))),
    GraphQLField("ownerId", type: .scalar(String.self)),
    GraphQLField("phones", type: .list(.scalar(String.self))),
    GraphQLField("leadStatus", type: .scalar(String.self)),
    GraphQLField("lifecycleState", type: .scalar(String.self)),
    GraphQLField("businessType", type: .scalar(String.self)),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("doNotDisturb", type: .scalar(String.self)),
    GraphQLField("links", type: .object(Link.selections)),
    GraphQLField("owner", type: .object(Owner.selections)),
    GraphQLField("parentCompany", type: .object(ParentCompany.selections)),
    GraphQLField("customFieldsData", type: .scalar(JSON.self)),
    GraphQLField("tagIds", type: .list(.scalar(String.self))),
    GraphQLField("getTags", type: .list(.object(GetTag.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, createdAt: SDate? = nil, modifiedAt: SDate? = nil, avatar: String? = nil, primaryName: String? = nil, names: [String?]? = nil, size: Int? = nil, industry: String? = nil, plan: String? = nil, parentCompanyId: String? = nil, emails: [String?]? = nil, ownerId: String? = nil, phones: [String?]? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, businessType: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: Link? = nil, owner: Owner? = nil, parentCompany: ParentCompany? = nil, customFieldsData: JSON? = nil, tagIds: [String?]? = nil, getTags: [GetTag?]? = nil) {
    self.init(snapshot: ["__typename": "Company", "_id": id, "createdAt": createdAt, "modifiedAt": modifiedAt, "avatar": avatar, "primaryName": primaryName, "names": names, "size": size, "industry": industry, "plan": plan, "parentCompanyId": parentCompanyId, "emails": emails, "ownerId": ownerId, "phones": phones, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "businessType": businessType, "description": description, "doNotDisturb": doNotDisturb, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }, "owner": owner.flatMap { (value: Owner) -> Snapshot in value.snapshot }, "parentCompany": parentCompany.flatMap { (value: ParentCompany) -> Snapshot in value.snapshot }, "customFieldsData": customFieldsData, "tagIds": tagIds, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var createdAt: SDate? {
    get {
      return snapshot["createdAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var modifiedAt: SDate? {
    get {
      return snapshot["modifiedAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "modifiedAt")
    }
  }

  public var avatar: String? {
    get {
      return snapshot["avatar"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "avatar")
    }
  }

  public var primaryName: String? {
    get {
      return snapshot["primaryName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryName")
    }
  }

  public var names: [String?]? {
    get {
      return snapshot["names"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "names")
    }
  }

  public var size: Int? {
    get {
      return snapshot["size"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "size")
    }
  }

  public var industry: String? {
    get {
      return snapshot["industry"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "industry")
    }
  }

  public var plan: String? {
    get {
      return snapshot["plan"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "plan")
    }
  }

  public var parentCompanyId: String? {
    get {
      return snapshot["parentCompanyId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "parentCompanyId")
    }
  }

  public var emails: [String?]? {
    get {
      return snapshot["emails"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "emails")
    }
  }

  public var ownerId: String? {
    get {
      return snapshot["ownerId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "ownerId")
    }
  }

  public var phones: [String?]? {
    get {
      return snapshot["phones"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "phones")
    }
  }

  public var leadStatus: String? {
    get {
      return snapshot["leadStatus"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "leadStatus")
    }
  }

  public var lifecycleState: String? {
    get {
      return snapshot["lifecycleState"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lifecycleState")
    }
  }

  public var businessType: String? {
    get {
      return snapshot["businessType"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "businessType")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  public var doNotDisturb: String? {
    get {
      return snapshot["doNotDisturb"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "doNotDisturb")
    }
  }

  public var links: Link? {
    get {
      return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "links")
    }
  }

  public var owner: Owner? {
    get {
      return (snapshot["owner"] as? Snapshot).flatMap { Owner(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "owner")
    }
  }

  public var parentCompany: ParentCompany? {
    get {
      return (snapshot["parentCompany"] as? Snapshot).flatMap { ParentCompany(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "parentCompany")
    }
  }

  public var customFieldsData: JSON? {
    get {
      return snapshot["customFieldsData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "customFieldsData")
    }
  }

  public var tagIds: [String?]? {
    get {
      return snapshot["tagIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "tagIds")
    }
  }

  public var getTags: [GetTag?]? {
    get {
      return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
    }
  }

  public struct Link: GraphQLSelectionSet {
    public static let possibleTypes = ["CompanyLinks"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("linkedIn", type: .scalar(String.self)),
      GraphQLField("twitter", type: .scalar(String.self)),
      GraphQLField("facebook", type: .scalar(String.self)),
      GraphQLField("github", type: .scalar(String.self)),
      GraphQLField("youtube", type: .scalar(String.self)),
      GraphQLField("website", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, github: String? = nil, youtube: String? = nil, website: String? = nil) {
      self.init(snapshot: ["__typename": "CompanyLinks", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "github": github, "youtube": youtube, "website": website])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var linkedIn: String? {
      get {
        return snapshot["linkedIn"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "linkedIn")
      }
    }

    public var twitter: String? {
      get {
        return snapshot["twitter"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "twitter")
      }
    }

    public var facebook: String? {
      get {
        return snapshot["facebook"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "facebook")
      }
    }

    public var github: String? {
      get {
        return snapshot["github"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "github")
      }
    }

    public var youtube: String? {
      get {
        return snapshot["youtube"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "youtube")
      }
    }

    public var website: String? {
      get {
        return snapshot["website"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "website")
      }
    }
  }

  public struct Owner: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("username", type: .scalar(String.self)),
      GraphQLField("details", type: .object(Detail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, username: String? = nil, details: Detail? = nil) {
      self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var username: String? {
      get {
        return snapshot["username"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "username")
      }
    }

    public var details: Detail? {
      get {
        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "details")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    public struct Fragments {
      public var snapshot: Snapshot

      public var userData: UserData {
        get {
          return UserData(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    public struct Detail: GraphQLSelectionSet {
      public static let possibleTypes = ["UserDetailsType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullName", type: .scalar(String.self)),
        GraphQLField("avatar", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(fullName: String? = nil, avatar: String? = nil) {
        self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName, "avatar": avatar])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fullName: String? {
        get {
          return snapshot["fullName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fullName")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }
    }
  }

  public struct ParentCompany: GraphQLSelectionSet {
    public static let possibleTypes = ["Company"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("primaryName", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, primaryName: String? = nil) {
      self.init(snapshot: ["__typename": "Company", "_id": id, "primaryName": primaryName])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var primaryName: String? {
      get {
        return snapshot["primaryName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "primaryName")
      }
    }
  }

  public struct GetTag: GraphQLSelectionSet {
    public static let possibleTypes = ["Tag"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("colorCode", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, name: String? = nil, colorCode: String? = nil) {
      self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    public var colorCode: String? {
      get {
        return snapshot["colorCode"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "colorCode")
      }
    }
  }
}

public struct SegmentObj: GraphQLFragment {
  public static let fragmentString =
    "fragment SegmentObj on Segment {\n  __typename\n  _id\n  name\n  subOf\n  color\n}"

  public static let possibleTypes = ["Segment"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("subOf", type: .scalar(String.self)),
    GraphQLField("color", type: .scalar(String.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, name: String, subOf: String? = nil, color: String? = nil) {
    self.init(snapshot: ["__typename": "Segment", "_id": id, "name": name, "subOf": subOf, "color": color])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  public var subOf: String? {
    get {
      return snapshot["subOf"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "subOf")
    }
  }

  public var color: String? {
    get {
      return snapshot["color"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "color")
    }
  }
}

public struct FormObj: GraphQLFragment {
  public static let fragmentString =
    "fragment FormObj on Integration {\n  __typename\n  _id\n  name\n}"

  public static let possibleTypes = ["Integration"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, name: String) {
    self.init(snapshot: ["__typename": "Integration", "_id": id, "name": name])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }
}

public struct LogData: GraphQLFragment {
  public static let fragmentString =
    "fragment LogData on ActivityLogForMonth {\n  __typename\n  date {\n    __typename\n    year\n    month\n  }\n  list {\n    __typename\n    id\n    action\n    content\n    createdAt\n    by {\n      __typename\n      _id\n      type\n      details {\n        __typename\n        avatar\n        fullName\n      }\n    }\n  }\n}"

  public static let possibleTypes = ["ActivityLogForMonth"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("date", type: .nonNull(.object(Date.selections))),
    GraphQLField("list", type: .nonNull(.list(.object(List.selections)))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(date: Date, list: [List?]) {
    self.init(snapshot: ["__typename": "ActivityLogForMonth", "date": date.snapshot, "list": list.map { (value: List?) -> Snapshot? in value.flatMap { (value: List) -> Snapshot in value.snapshot } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var date: Date {
    get {
      return Date(snapshot: snapshot["date"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "date")
    }
  }

  public var list: [List?] {
    get {
      return (snapshot["list"] as! [Snapshot?]).map { (value: Snapshot?) -> List? in value.flatMap { (value: Snapshot) -> List in List(snapshot: value) } }
    }
    set {
      snapshot.updateValue(newValue.map { (value: List?) -> Snapshot? in value.flatMap { (value: List) -> Snapshot in value.snapshot } }, forKey: "list")
    }
  }

  public struct Date: GraphQLSelectionSet {
    public static let possibleTypes = ["ActivityLogYearMonthDoc"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("year", type: .scalar(Int.self)),
      GraphQLField("month", type: .scalar(Int.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(year: Int? = nil, month: Int? = nil) {
      self.init(snapshot: ["__typename": "ActivityLogYearMonthDoc", "year": year, "month": month])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var year: Int? {
      get {
        return snapshot["year"] as? Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "year")
      }
    }

    public var month: Int? {
      get {
        return snapshot["month"] as? Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "month")
      }
    }
  }

  public struct List: GraphQLSelectionSet {
    public static let possibleTypes = ["ActivityLog"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .scalar(String.self)),
      GraphQLField("action", type: .nonNull(.scalar(String.self))),
      GraphQLField("content", type: .scalar(String.self)),
      GraphQLField("createdAt", type: .nonNull(.scalar(SDate.self))),
      GraphQLField("by", type: .object(By.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String? = nil, action: String, content: String? = nil, createdAt: SDate, by: By? = nil) {
      self.init(snapshot: ["__typename": "ActivityLog", "id": id, "action": action, "content": content, "createdAt": createdAt, "by": by.flatMap { (value: By) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String? {
      get {
        return snapshot["id"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "id")
      }
    }

    public var action: String {
      get {
        return snapshot["action"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "action")
      }
    }

    public var content: String? {
      get {
        return snapshot["content"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "content")
      }
    }

    public var createdAt: SDate {
      get {
        return snapshot["createdAt"]! as! SDate
      }
      set {
        snapshot.updateValue(newValue, forKey: "createdAt")
      }
    }

    public var by: By? {
      get {
        return (snapshot["by"] as? Snapshot).flatMap { By(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "by")
      }
    }

    public struct By: GraphQLSelectionSet {
      public static let possibleTypes = ["ActivityLogActionPerformer"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .scalar(String.self)),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("details", type: .object(Detail.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String? = nil, type: String, details: Detail? = nil) {
        self.init(snapshot: ["__typename": "ActivityLogActionPerformer", "_id": id, "type": type, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String? {
        get {
          return snapshot["_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var type: String {
        get {
          return snapshot["type"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "type")
        }
      }

      public var details: Detail? {
        get {
          return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "details")
        }
      }

      public struct Detail: GraphQLSelectionSet {
        public static let possibleTypes = ["ActivityLogPerformerDetails"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .scalar(String.self)),
          GraphQLField("fullName", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: String? = nil, fullName: String? = nil) {
          self.init(snapshot: ["__typename": "ActivityLogPerformerDetails", "avatar": avatar, "fullName": fullName])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: String? {
          get {
            return snapshot["avatar"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "avatar")
          }
        }

        public var fullName: String? {
          get {
            return snapshot["fullName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "fullName")
          }
        }
      }
    }
  }
}

public struct CustomerInfo: GraphQLFragment {
  public static let fragmentString =
    "fragment CustomerInfo on Customer {\n  __typename\n  _id\n  firstName\n  lastName\n  avatar\n  primaryEmail\n  emails\n  primaryPhone\n  phones\n  isUser\n  visitorContactInfo\n  position\n  department\n  leadStatus\n  lifecycleState\n  hasAuthority\n  description\n  doNotDisturb\n  links {\n    __typename\n    linkedIn\n    twitter\n    facebook\n    github\n    youtube\n    website\n  }\n  ownerId\n  owner {\n    __typename\n    ...UserData\n  }\n  integrationId\n  remoteAddress\n  location\n  customFieldsData\n  messengerData\n  twitterData\n  facebookData\n  tagIds\n  getTags {\n    __typename\n    _id\n    name\n    colorCode\n  }\n  integration {\n    __typename\n    kind\n    name\n  }\n  getMessengerCustomData\n  companies {\n    __typename\n    _id\n    primaryName\n    website\n  }\n}"

  public static let possibleTypes = ["Customer"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("firstName", type: .scalar(String.self)),
    GraphQLField("lastName", type: .scalar(String.self)),
    GraphQLField("avatar", type: .scalar(String.self)),
    GraphQLField("primaryEmail", type: .scalar(String.self)),
    GraphQLField("emails", type: .list(.scalar(String.self))),
    GraphQLField("primaryPhone", type: .scalar(String.self)),
    GraphQLField("phones", type: .list(.scalar(String.self))),
    GraphQLField("isUser", type: .scalar(Bool.self)),
    GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
    GraphQLField("position", type: .scalar(String.self)),
    GraphQLField("department", type: .scalar(String.self)),
    GraphQLField("leadStatus", type: .scalar(String.self)),
    GraphQLField("lifecycleState", type: .scalar(String.self)),
    GraphQLField("hasAuthority", type: .scalar(String.self)),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("doNotDisturb", type: .scalar(String.self)),
    GraphQLField("links", type: .object(Link.selections)),
    GraphQLField("ownerId", type: .scalar(String.self)),
    GraphQLField("owner", type: .object(Owner.selections)),
    GraphQLField("integrationId", type: .scalar(String.self)),
    GraphQLField("remoteAddress", type: .scalar(String.self)),
    GraphQLField("location", type: .scalar(JSON.self)),
    GraphQLField("customFieldsData", type: .scalar(JSON.self)),
    GraphQLField("messengerData", type: .scalar(JSON.self)),
    GraphQLField("twitterData", type: .scalar(JSON.self)),
    GraphQLField("facebookData", type: .scalar(JSON.self)),
    GraphQLField("tagIds", type: .list(.scalar(String.self))),
    GraphQLField("getTags", type: .list(.object(GetTag.selections))),
    GraphQLField("integration", type: .object(Integration.selections)),
    GraphQLField("getMessengerCustomData", type: .scalar(JSON.self)),
    GraphQLField("companies", type: .list(.object(Company.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, primaryEmail: String? = nil, emails: [String?]? = nil, primaryPhone: String? = nil, phones: [String?]? = nil, isUser: Bool? = nil, visitorContactInfo: JSON? = nil, position: String? = nil, department: String? = nil, leadStatus: String? = nil, lifecycleState: String? = nil, hasAuthority: String? = nil, description: String? = nil, doNotDisturb: String? = nil, links: Link? = nil, ownerId: String? = nil, owner: Owner? = nil, integrationId: String? = nil, remoteAddress: String? = nil, location: JSON? = nil, customFieldsData: JSON? = nil, messengerData: JSON? = nil, twitterData: JSON? = nil, facebookData: JSON? = nil, tagIds: [String?]? = nil, getTags: [GetTag?]? = nil, integration: Integration? = nil, getMessengerCustomData: JSON? = nil, companies: [Company?]? = nil) {
    self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "primaryEmail": primaryEmail, "emails": emails, "primaryPhone": primaryPhone, "phones": phones, "isUser": isUser, "visitorContactInfo": visitorContactInfo, "position": position, "department": department, "leadStatus": leadStatus, "lifecycleState": lifecycleState, "hasAuthority": hasAuthority, "description": description, "doNotDisturb": doNotDisturb, "links": links.flatMap { (value: Link) -> Snapshot in value.snapshot }, "ownerId": ownerId, "owner": owner.flatMap { (value: Owner) -> Snapshot in value.snapshot }, "integrationId": integrationId, "remoteAddress": remoteAddress, "location": location, "customFieldsData": customFieldsData, "messengerData": messengerData, "twitterData": twitterData, "facebookData": facebookData, "tagIds": tagIds, "getTags": getTags.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, "integration": integration.flatMap { (value: Integration) -> Snapshot in value.snapshot }, "getMessengerCustomData": getMessengerCustomData, "companies": companies.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var firstName: String? {
    get {
      return snapshot["firstName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return snapshot["lastName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastName")
    }
  }

  public var avatar: String? {
    get {
      return snapshot["avatar"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "avatar")
    }
  }

  public var primaryEmail: String? {
    get {
      return snapshot["primaryEmail"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryEmail")
    }
  }

  public var emails: [String?]? {
    get {
      return snapshot["emails"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "emails")
    }
  }

  public var primaryPhone: String? {
    get {
      return snapshot["primaryPhone"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "primaryPhone")
    }
  }

  public var phones: [String?]? {
    get {
      return snapshot["phones"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "phones")
    }
  }

  public var isUser: Bool? {
    get {
      return snapshot["isUser"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "isUser")
    }
  }

  public var visitorContactInfo: JSON? {
    get {
      return snapshot["visitorContactInfo"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "visitorContactInfo")
    }
  }

  public var position: String? {
    get {
      return snapshot["position"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "position")
    }
  }

  public var department: String? {
    get {
      return snapshot["department"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "department")
    }
  }

  public var leadStatus: String? {
    get {
      return snapshot["leadStatus"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "leadStatus")
    }
  }

  public var lifecycleState: String? {
    get {
      return snapshot["lifecycleState"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "lifecycleState")
    }
  }

  public var hasAuthority: String? {
    get {
      return snapshot["hasAuthority"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "hasAuthority")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  public var doNotDisturb: String? {
    get {
      return snapshot["doNotDisturb"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "doNotDisturb")
    }
  }

  public var links: Link? {
    get {
      return (snapshot["links"] as? Snapshot).flatMap { Link(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "links")
    }
  }

  public var ownerId: String? {
    get {
      return snapshot["ownerId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "ownerId")
    }
  }

  public var owner: Owner? {
    get {
      return (snapshot["owner"] as? Snapshot).flatMap { Owner(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "owner")
    }
  }

  public var integrationId: String? {
    get {
      return snapshot["integrationId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "integrationId")
    }
  }

  public var remoteAddress: String? {
    get {
      return snapshot["remoteAddress"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "remoteAddress")
    }
  }

  public var location: JSON? {
    get {
      return snapshot["location"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "location")
    }
  }

  public var customFieldsData: JSON? {
    get {
      return snapshot["customFieldsData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "customFieldsData")
    }
  }

  public var messengerData: JSON? {
    get {
      return snapshot["messengerData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "messengerData")
    }
  }

  public var twitterData: JSON? {
    get {
      return snapshot["twitterData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "twitterData")
    }
  }

  public var facebookData: JSON? {
    get {
      return snapshot["facebookData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "facebookData")
    }
  }

  public var tagIds: [String?]? {
    get {
      return snapshot["tagIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "tagIds")
    }
  }

  public var getTags: [GetTag?]? {
    get {
      return (snapshot["getTags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [GetTag?] in value.map { (value: Snapshot?) -> GetTag? in value.flatMap { (value: Snapshot) -> GetTag in GetTag(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [GetTag?]) -> [Snapshot?] in value.map { (value: GetTag?) -> Snapshot? in value.flatMap { (value: GetTag) -> Snapshot in value.snapshot } } }, forKey: "getTags")
    }
  }

  public var integration: Integration? {
    get {
      return (snapshot["integration"] as? Snapshot).flatMap { Integration(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "integration")
    }
  }

  public var getMessengerCustomData: JSON? {
    get {
      return snapshot["getMessengerCustomData"] as? JSON
    }
    set {
      snapshot.updateValue(newValue, forKey: "getMessengerCustomData")
    }
  }

  public var companies: [Company?]? {
    get {
      return (snapshot["companies"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Company?] in value.map { (value: Snapshot?) -> Company? in value.flatMap { (value: Snapshot) -> Company in Company(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Company?]) -> [Snapshot?] in value.map { (value: Company?) -> Snapshot? in value.flatMap { (value: Company) -> Snapshot in value.snapshot } } }, forKey: "companies")
    }
  }

  public struct Link: GraphQLSelectionSet {
    public static let possibleTypes = ["CustomerLinks"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("linkedIn", type: .scalar(String.self)),
      GraphQLField("twitter", type: .scalar(String.self)),
      GraphQLField("facebook", type: .scalar(String.self)),
      GraphQLField("github", type: .scalar(String.self)),
      GraphQLField("youtube", type: .scalar(String.self)),
      GraphQLField("website", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(linkedIn: String? = nil, twitter: String? = nil, facebook: String? = nil, github: String? = nil, youtube: String? = nil, website: String? = nil) {
      self.init(snapshot: ["__typename": "CustomerLinks", "linkedIn": linkedIn, "twitter": twitter, "facebook": facebook, "github": github, "youtube": youtube, "website": website])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var linkedIn: String? {
      get {
        return snapshot["linkedIn"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "linkedIn")
      }
    }

    public var twitter: String? {
      get {
        return snapshot["twitter"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "twitter")
      }
    }

    public var facebook: String? {
      get {
        return snapshot["facebook"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "facebook")
      }
    }

    public var github: String? {
      get {
        return snapshot["github"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "github")
      }
    }

    public var youtube: String? {
      get {
        return snapshot["youtube"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "youtube")
      }
    }

    public var website: String? {
      get {
        return snapshot["website"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "website")
      }
    }
  }

  public struct Owner: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("username", type: .scalar(String.self)),
      GraphQLField("details", type: .object(Detail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, username: String? = nil, details: Detail? = nil) {
      self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var username: String? {
      get {
        return snapshot["username"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "username")
      }
    }

    public var details: Detail? {
      get {
        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "details")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    public struct Fragments {
      public var snapshot: Snapshot

      public var userData: UserData {
        get {
          return UserData(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    public struct Detail: GraphQLSelectionSet {
      public static let possibleTypes = ["UserDetailsType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullName", type: .scalar(String.self)),
        GraphQLField("avatar", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(fullName: String? = nil, avatar: String? = nil) {
        self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName, "avatar": avatar])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fullName: String? {
        get {
          return snapshot["fullName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "fullName")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }
    }
  }

  public struct GetTag: GraphQLSelectionSet {
    public static let possibleTypes = ["Tag"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("colorCode", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, name: String? = nil, colorCode: String? = nil) {
      self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "colorCode": colorCode])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    public var colorCode: String? {
      get {
        return snapshot["colorCode"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "colorCode")
      }
    }
  }

  public struct Integration: GraphQLSelectionSet {
    public static let possibleTypes = ["Integration"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(kind: String, name: String) {
      self.init(snapshot: ["__typename": "Integration", "kind": kind, "name": name])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var kind: String {
      get {
        return snapshot["kind"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "kind")
      }
    }

    public var name: String {
      get {
        return snapshot["name"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }
  }

  public struct Company: GraphQLSelectionSet {
    public static let possibleTypes = ["Company"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("primaryName", type: .scalar(String.self)),
      GraphQLField("website", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, primaryName: String? = nil, website: String? = nil) {
      self.init(snapshot: ["__typename": "Company", "_id": id, "primaryName": primaryName, "website": website])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var primaryName: String? {
      get {
        return snapshot["primaryName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "primaryName")
      }
    }

    public var website: String? {
      get {
        return snapshot["website"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "website")
      }
    }
  }
}

public struct FieldGroup: GraphQLFragment {
  public static let fragmentString =
    "fragment FieldGroup on FieldsGroup {\n  __typename\n  _id\n  name\n  description\n  order\n  isVisible\n  isDefinedByErxes\n  fields {\n    __typename\n    ...FieldData\n  }\n}"

  public static let possibleTypes = ["FieldsGroup"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .scalar(String.self)),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("order", type: .scalar(Int.self)),
    GraphQLField("isVisible", type: .scalar(Bool.self)),
    GraphQLField("isDefinedByErxes", type: .scalar(Bool.self)),
    GraphQLField("fields", type: .list(.object(Field.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, name: String? = nil, description: String? = nil, order: Int? = nil, isVisible: Bool? = nil, isDefinedByErxes: Bool? = nil, fields: [Field?]? = nil) {
    self.init(snapshot: ["__typename": "FieldsGroup", "_id": id, "name": name, "description": description, "order": order, "isVisible": isVisible, "isDefinedByErxes": isDefinedByErxes, "fields": fields.flatMap { (value: [Field?]) -> [Snapshot?] in value.map { (value: Field?) -> Snapshot? in value.flatMap { (value: Field) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String? {
    get {
      return snapshot["name"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  public var order: Int? {
    get {
      return snapshot["order"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "order")
    }
  }

  public var isVisible: Bool? {
    get {
      return snapshot["isVisible"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "isVisible")
    }
  }

  public var isDefinedByErxes: Bool? {
    get {
      return snapshot["isDefinedByErxes"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "isDefinedByErxes")
    }
  }

  public var fields: [Field?]? {
    get {
      return (snapshot["fields"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Field?] in value.map { (value: Snapshot?) -> Field? in value.flatMap { (value: Snapshot) -> Field in Field(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Field?]) -> [Snapshot?] in value.map { (value: Field?) -> Snapshot? in value.flatMap { (value: Field) -> Snapshot in value.snapshot } } }, forKey: "fields")
    }
  }

  public struct Field: GraphQLSelectionSet {
    public static let possibleTypes = ["Field"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("contentType", type: .nonNull(.scalar(String.self))),
      GraphQLField("type", type: .scalar(String.self)),
      GraphQLField("text", type: .scalar(String.self)),
      GraphQLField("isVisible", type: .scalar(Bool.self)),
      GraphQLField("validation", type: .scalar(String.self)),
      GraphQLField("order", type: .scalar(Int.self)),
      GraphQLField("options", type: .list(.scalar(String.self))),
      GraphQLField("groupId", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, contentType: String, type: String? = nil, text: String? = nil, isVisible: Bool? = nil, validation: String? = nil, order: Int? = nil, options: [String?]? = nil, groupId: String? = nil, description: String? = nil) {
      self.init(snapshot: ["__typename": "Field", "_id": id, "contentType": contentType, "type": type, "text": text, "isVisible": isVisible, "validation": validation, "order": order, "options": options, "groupId": groupId, "description": description])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var contentType: String {
      get {
        return snapshot["contentType"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "contentType")
      }
    }

    public var type: String? {
      get {
        return snapshot["type"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "type")
      }
    }

    public var text: String? {
      get {
        return snapshot["text"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "text")
      }
    }

    public var isVisible: Bool? {
      get {
        return snapshot["isVisible"] as? Bool
      }
      set {
        snapshot.updateValue(newValue, forKey: "isVisible")
      }
    }

    public var validation: String? {
      get {
        return snapshot["validation"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "validation")
      }
    }

    public var order: Int? {
      get {
        return snapshot["order"] as? Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "order")
      }
    }

    public var options: [String?]? {
      get {
        return snapshot["options"] as? [String?]
      }
      set {
        snapshot.updateValue(newValue, forKey: "options")
      }
    }

    public var groupId: String? {
      get {
        return snapshot["groupId"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "groupId")
      }
    }

    public var description: String? {
      get {
        return snapshot["description"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "description")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    public struct Fragments {
      public var snapshot: Snapshot

      public var fieldData: FieldData {
        get {
          return FieldData(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }
  }
}

public struct FieldData: GraphQLFragment {
  public static let fragmentString =
    "fragment FieldData on Field {\n  __typename\n  _id\n  contentType\n  type\n  text\n  isVisible\n  validation\n  order\n  options\n  groupId\n  description\n}"

  public static let possibleTypes = ["Field"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("contentType", type: .nonNull(.scalar(String.self))),
    GraphQLField("type", type: .scalar(String.self)),
    GraphQLField("text", type: .scalar(String.self)),
    GraphQLField("isVisible", type: .scalar(Bool.self)),
    GraphQLField("validation", type: .scalar(String.self)),
    GraphQLField("order", type: .scalar(Int.self)),
    GraphQLField("options", type: .list(.scalar(String.self))),
    GraphQLField("groupId", type: .scalar(String.self)),
    GraphQLField("description", type: .scalar(String.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, contentType: String, type: String? = nil, text: String? = nil, isVisible: Bool? = nil, validation: String? = nil, order: Int? = nil, options: [String?]? = nil, groupId: String? = nil, description: String? = nil) {
    self.init(snapshot: ["__typename": "Field", "_id": id, "contentType": contentType, "type": type, "text": text, "isVisible": isVisible, "validation": validation, "order": order, "options": options, "groupId": groupId, "description": description])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var contentType: String {
    get {
      return snapshot["contentType"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "contentType")
    }
  }

  public var type: String? {
    get {
      return snapshot["type"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "type")
    }
  }

  public var text: String? {
    get {
      return snapshot["text"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "text")
    }
  }

  public var isVisible: Bool? {
    get {
      return snapshot["isVisible"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "isVisible")
    }
  }

  public var validation: String? {
    get {
      return snapshot["validation"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "validation")
    }
  }

  public var order: Int? {
    get {
      return snapshot["order"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "order")
    }
  }

  public var options: [String?]? {
    get {
      return snapshot["options"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "options")
    }
  }

  public var groupId: String? {
    get {
      return snapshot["groupId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "groupId")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }
}

public struct BrandDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment BrandDetail on Brand {\n  __typename\n  _id\n  name\n}"

  public static let possibleTypes = ["Brand"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .scalar(String.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, name: String? = nil) {
    self.init(snapshot: ["__typename": "Brand", "_id": id, "name": name])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String? {
    get {
      return snapshot["name"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }
}

public struct ChannelDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment ChannelDetail on Channel {\n  __typename\n  _id\n  name\n  description\n  integrationIds\n  memberIds\n  conversationCount\n  openConversationCount\n  integrations {\n    __typename\n    code\n    formId\n    formData\n    messengerData\n    twitterData\n    facebookData\n    uiOptions\n  }\n}"

  public static let possibleTypes = ["Channel"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("integrationIds", type: .list(.scalar(String.self))),
    GraphQLField("memberIds", type: .list(.scalar(String.self))),
    GraphQLField("conversationCount", type: .scalar(Int.self)),
    GraphQLField("openConversationCount", type: .scalar(Int.self)),
    GraphQLField("integrations", type: .list(.object(Integration.selections))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, name: String, description: String? = nil, integrationIds: [String?]? = nil, memberIds: [String?]? = nil, conversationCount: Int? = nil, openConversationCount: Int? = nil, integrations: [Integration?]? = nil) {
    self.init(snapshot: ["__typename": "Channel", "_id": id, "name": name, "description": description, "integrationIds": integrationIds, "memberIds": memberIds, "conversationCount": conversationCount, "openConversationCount": openConversationCount, "integrations": integrations.flatMap { (value: [Integration?]) -> [Snapshot?] in value.map { (value: Integration?) -> Snapshot? in value.flatMap { (value: Integration) -> Snapshot in value.snapshot } } }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  public var integrationIds: [String?]? {
    get {
      return snapshot["integrationIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "integrationIds")
    }
  }

  public var memberIds: [String?]? {
    get {
      return snapshot["memberIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "memberIds")
    }
  }

  public var conversationCount: Int? {
    get {
      return snapshot["conversationCount"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "conversationCount")
    }
  }

  public var openConversationCount: Int? {
    get {
      return snapshot["openConversationCount"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "openConversationCount")
    }
  }

  public var integrations: [Integration?]? {
    get {
      return (snapshot["integrations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Integration?] in value.map { (value: Snapshot?) -> Integration? in value.flatMap { (value: Snapshot) -> Integration in Integration(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Integration?]) -> [Snapshot?] in value.map { (value: Integration?) -> Snapshot? in value.flatMap { (value: Integration) -> Snapshot in value.snapshot } } }, forKey: "integrations")
    }
  }

  public struct Integration: GraphQLSelectionSet {
    public static let possibleTypes = ["Integration"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("code", type: .scalar(String.self)),
      GraphQLField("formId", type: .scalar(String.self)),
      GraphQLField("formData", type: .scalar(JSON.self)),
      GraphQLField("messengerData", type: .scalar(JSON.self)),
      GraphQLField("twitterData", type: .scalar(JSON.self)),
      GraphQLField("facebookData", type: .scalar(JSON.self)),
      GraphQLField("uiOptions", type: .scalar(JSON.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(code: String? = nil, formId: String? = nil, formData: JSON? = nil, messengerData: JSON? = nil, twitterData: JSON? = nil, facebookData: JSON? = nil, uiOptions: JSON? = nil) {
      self.init(snapshot: ["__typename": "Integration", "code": code, "formId": formId, "formData": formData, "messengerData": messengerData, "twitterData": twitterData, "facebookData": facebookData, "uiOptions": uiOptions])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var code: String? {
      get {
        return snapshot["code"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "code")
      }
    }

    public var formId: String? {
      get {
        return snapshot["formId"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "formId")
      }
    }

    public var formData: JSON? {
      get {
        return snapshot["formData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "formData")
      }
    }

    public var messengerData: JSON? {
      get {
        return snapshot["messengerData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "messengerData")
      }
    }

    public var twitterData: JSON? {
      get {
        return snapshot["twitterData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "twitterData")
      }
    }

    public var facebookData: JSON? {
      get {
        return snapshot["facebookData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "facebookData")
      }
    }

    public var uiOptions: JSON? {
      get {
        return snapshot["uiOptions"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "uiOptions")
      }
    }
  }
}

public struct TagDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment TagDetail on Tag {\n  __typename\n  _id\n  name\n  type\n  colorCode\n  objectCount\n}"

  public static let possibleTypes = ["Tag"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .scalar(String.self)),
    GraphQLField("type", type: .scalar(String.self)),
    GraphQLField("colorCode", type: .scalar(String.self)),
    GraphQLField("objectCount", type: .scalar(Int.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, name: String? = nil, type: String? = nil, colorCode: String? = nil, objectCount: Int? = nil) {
    self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name, "type": type, "colorCode": colorCode, "objectCount": objectCount])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String? {
    get {
      return snapshot["name"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  public var type: String? {
    get {
      return snapshot["type"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "type")
    }
  }

  public var colorCode: String? {
    get {
      return snapshot["colorCode"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "colorCode")
    }
  }

  public var objectCount: Int? {
    get {
      return snapshot["objectCount"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "objectCount")
    }
  }
}

public struct ConversationDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment ConversationDetail on Conversation {\n  __typename\n  _id\n  content\n  createdAt\n  customerId\n  customer {\n    __typename\n    integrationId\n    firstName\n    lastName\n    email\n    phone\n    isUser\n    createdAt\n    remoteAddress\n    internalNotes\n    location\n    customFieldsData\n    messengerData\n    twitterData\n    facebookData\n    getIntegrationData\n  }\n}"

  public static let possibleTypes = ["Conversation"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("content", type: .scalar(String.self)),
    GraphQLField("createdAt", type: .scalar(SDate.self)),
    GraphQLField("customerId", type: .scalar(String.self)),
    GraphQLField("customer", type: .object(Customer.selections)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, content: String? = nil, createdAt: SDate? = nil, customerId: String? = nil, customer: Customer? = nil) {
    self.init(snapshot: ["__typename": "Conversation", "_id": id, "content": content, "createdAt": createdAt, "customerId": customerId, "customer": customer.flatMap { (value: Customer) -> Snapshot in value.snapshot }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var content: String? {
    get {
      return snapshot["content"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "content")
    }
  }

  public var createdAt: SDate? {
    get {
      return snapshot["createdAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var customerId: String? {
    get {
      return snapshot["customerId"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "customerId")
    }
  }

  public var customer: Customer? {
    get {
      return (snapshot["customer"] as? Snapshot).flatMap { Customer(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "customer")
    }
  }

  public struct Customer: GraphQLSelectionSet {
    public static let possibleTypes = ["Customer"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("integrationId", type: .scalar(String.self)),
      GraphQLField("firstName", type: .scalar(String.self)),
      GraphQLField("lastName", type: .scalar(String.self)),
      GraphQLField("email", type: .scalar(String.self)),
      GraphQLField("phone", type: .scalar(String.self)),
      GraphQLField("isUser", type: .scalar(Bool.self)),
      GraphQLField("createdAt", type: .scalar(SDate.self)),
      GraphQLField("remoteAddress", type: .scalar(String.self)),
      GraphQLField("internalNotes", type: .scalar(JSON.self)),
      GraphQLField("location", type: .scalar(JSON.self)),
      GraphQLField("customFieldsData", type: .scalar(JSON.self)),
      GraphQLField("messengerData", type: .scalar(JSON.self)),
      GraphQLField("twitterData", type: .scalar(JSON.self)),
      GraphQLField("facebookData", type: .scalar(JSON.self)),
      GraphQLField("getIntegrationData", type: .scalar(JSON.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(integrationId: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, isUser: Bool? = nil, createdAt: SDate? = nil, remoteAddress: String? = nil, internalNotes: JSON? = nil, location: JSON? = nil, customFieldsData: JSON? = nil, messengerData: JSON? = nil, twitterData: JSON? = nil, facebookData: JSON? = nil, getIntegrationData: JSON? = nil) {
      self.init(snapshot: ["__typename": "Customer", "integrationId": integrationId, "firstName": firstName, "lastName": lastName, "email": email, "phone": phone, "isUser": isUser, "createdAt": createdAt, "remoteAddress": remoteAddress, "internalNotes": internalNotes, "location": location, "customFieldsData": customFieldsData, "messengerData": messengerData, "twitterData": twitterData, "facebookData": facebookData, "getIntegrationData": getIntegrationData])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var integrationId: String? {
      get {
        return snapshot["integrationId"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "integrationId")
      }
    }

    public var firstName: String? {
      get {
        return snapshot["firstName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "firstName")
      }
    }

    public var lastName: String? {
      get {
        return snapshot["lastName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "lastName")
      }
    }

    public var email: String? {
      get {
        return snapshot["email"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "email")
      }
    }

    public var phone: String? {
      get {
        return snapshot["phone"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "phone")
      }
    }

    public var isUser: Bool? {
      get {
        return snapshot["isUser"] as? Bool
      }
      set {
        snapshot.updateValue(newValue, forKey: "isUser")
      }
    }

    public var createdAt: SDate? {
      get {
        return snapshot["createdAt"] as? SDate
      }
      set {
        snapshot.updateValue(newValue, forKey: "createdAt")
      }
    }

    public var remoteAddress: String? {
      get {
        return snapshot["remoteAddress"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "remoteAddress")
      }
    }

    public var internalNotes: JSON? {
      get {
        return snapshot["internalNotes"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "internalNotes")
      }
    }

    public var location: JSON? {
      get {
        return snapshot["location"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "location")
      }
    }

    public var customFieldsData: JSON? {
      get {
        return snapshot["customFieldsData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "customFieldsData")
      }
    }

    public var messengerData: JSON? {
      get {
        return snapshot["messengerData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "messengerData")
      }
    }

    public var twitterData: JSON? {
      get {
        return snapshot["twitterData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "twitterData")
      }
    }

    public var facebookData: JSON? {
      get {
        return snapshot["facebookData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "facebookData")
      }
    }

    public var getIntegrationData: JSON? {
      get {
        return snapshot["getIntegrationData"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "getIntegrationData")
      }
    }
  }
}

public struct ObjectDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment ObjectDetail on Conversation {\n  __typename\n  _id\n  content\n  updatedAt\n  status\n  assignedUser {\n    __typename\n    _id\n    details {\n      __typename\n      avatar\n    }\n  }\n  integration {\n    __typename\n    _id\n    kind\n    brand {\n      __typename\n      _id\n      name\n    }\n    channels {\n      __typename\n      _id\n      name\n    }\n  }\n  customer {\n    __typename\n    _id\n    firstName\n    lastName\n    avatar\n    email\n    primaryEmail\n    phone\n    isUser\n    visitorContactInfo\n  }\n  tagIds\n  tags {\n    __typename\n    _id\n    name\n  }\n  readUserIds\n  twitterData {\n    __typename\n    isDirectMessage\n  }\n  facebookData {\n    __typename\n    kind\n  }\n}"

  public static let possibleTypes = ["Conversation"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("content", type: .scalar(String.self)),
    GraphQLField("updatedAt", type: .scalar(SDate.self)),
    GraphQLField("status", type: .scalar(String.self)),
    GraphQLField("assignedUser", type: .object(AssignedUser.selections)),
    GraphQLField("integration", type: .object(Integration.selections)),
    GraphQLField("customer", type: .object(Customer.selections)),
    GraphQLField("tagIds", type: .list(.scalar(String.self))),
    GraphQLField("tags", type: .list(.object(Tag.selections))),
    GraphQLField("readUserIds", type: .list(.scalar(String.self))),
    GraphQLField("twitterData", type: .object(TwitterDatum.selections)),
    GraphQLField("facebookData", type: .object(FacebookDatum.selections)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, content: String? = nil, updatedAt: SDate? = nil, status: String? = nil, assignedUser: AssignedUser? = nil, integration: Integration? = nil, customer: Customer? = nil, tagIds: [String?]? = nil, tags: [Tag?]? = nil, readUserIds: [String?]? = nil, twitterData: TwitterDatum? = nil, facebookData: FacebookDatum? = nil) {
    self.init(snapshot: ["__typename": "Conversation", "_id": id, "content": content, "updatedAt": updatedAt, "status": status, "assignedUser": assignedUser.flatMap { (value: AssignedUser) -> Snapshot in value.snapshot }, "integration": integration.flatMap { (value: Integration) -> Snapshot in value.snapshot }, "customer": customer.flatMap { (value: Customer) -> Snapshot in value.snapshot }, "tagIds": tagIds, "tags": tags.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }, "readUserIds": readUserIds, "twitterData": twitterData.flatMap { (value: TwitterDatum) -> Snapshot in value.snapshot }, "facebookData": facebookData.flatMap { (value: FacebookDatum) -> Snapshot in value.snapshot }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var content: String? {
    get {
      return snapshot["content"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "content")
    }
  }

  public var updatedAt: SDate? {
    get {
      return snapshot["updatedAt"] as? SDate
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var status: String? {
    get {
      return snapshot["status"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "status")
    }
  }

  public var assignedUser: AssignedUser? {
    get {
      return (snapshot["assignedUser"] as? Snapshot).flatMap { AssignedUser(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "assignedUser")
    }
  }

  public var integration: Integration? {
    get {
      return (snapshot["integration"] as? Snapshot).flatMap { Integration(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "integration")
    }
  }

  public var customer: Customer? {
    get {
      return (snapshot["customer"] as? Snapshot).flatMap { Customer(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "customer")
    }
  }

  public var tagIds: [String?]? {
    get {
      return snapshot["tagIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "tagIds")
    }
  }

  public var tags: [Tag?]? {
    get {
      return (snapshot["tags"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Tag?] in value.map { (value: Snapshot?) -> Tag? in value.flatMap { (value: Snapshot) -> Tag in Tag(snapshot: value) } } }
    }
    set {
      snapshot.updateValue(newValue.flatMap { (value: [Tag?]) -> [Snapshot?] in value.map { (value: Tag?) -> Snapshot? in value.flatMap { (value: Tag) -> Snapshot in value.snapshot } } }, forKey: "tags")
    }
  }

  public var readUserIds: [String?]? {
    get {
      return snapshot["readUserIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "readUserIds")
    }
  }

  public var twitterData: TwitterDatum? {
    get {
      return (snapshot["twitterData"] as? Snapshot).flatMap { TwitterDatum(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "twitterData")
    }
  }

  public var facebookData: FacebookDatum? {
    get {
      return (snapshot["facebookData"] as? Snapshot).flatMap { FacebookDatum(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "facebookData")
    }
  }

  public struct AssignedUser: GraphQLSelectionSet {
    public static let possibleTypes = ["User"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("details", type: .object(Detail.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, details: Detail? = nil) {
      self.init(snapshot: ["__typename": "User", "_id": id, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var details: Detail? {
      get {
        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "details")
      }
    }

    public struct Detail: GraphQLSelectionSet {
      public static let possibleTypes = ["UserDetailsType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("avatar", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(avatar: String? = nil) {
        self.init(snapshot: ["__typename": "UserDetailsType", "avatar": avatar])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var avatar: String? {
        get {
          return snapshot["avatar"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "avatar")
        }
      }
    }
  }

  public struct Integration: GraphQLSelectionSet {
    public static let possibleTypes = ["Integration"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .nonNull(.scalar(String.self))),
      GraphQLField("brand", type: .object(Brand.selections)),
      GraphQLField("channels", type: .list(.object(Channel.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, kind: String, brand: Brand? = nil, channels: [Channel?]? = nil) {
      self.init(snapshot: ["__typename": "Integration", "_id": id, "kind": kind, "brand": brand.flatMap { (value: Brand) -> Snapshot in value.snapshot }, "channels": channels.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var kind: String {
      get {
        return snapshot["kind"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "kind")
      }
    }

    public var brand: Brand? {
      get {
        return (snapshot["brand"] as? Snapshot).flatMap { Brand(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "brand")
      }
    }

    public var channels: [Channel?]? {
      get {
        return (snapshot["channels"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Channel?] in value.map { (value: Snapshot?) -> Channel? in value.flatMap { (value: Snapshot) -> Channel in Channel(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Channel?]) -> [Snapshot?] in value.map { (value: Channel?) -> Snapshot? in value.flatMap { (value: Channel) -> Snapshot in value.snapshot } } }, forKey: "channels")
      }
    }

    public struct Brand: GraphQLSelectionSet {
      public static let possibleTypes = ["Brand"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String? = nil) {
        self.init(snapshot: ["__typename": "Brand", "_id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }

    public struct Channel: GraphQLSelectionSet {
      public static let possibleTypes = ["Channel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, name: String) {
        self.init(snapshot: ["__typename": "Channel", "_id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }

  public struct Customer: GraphQLSelectionSet {
    public static let possibleTypes = ["Customer"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("firstName", type: .scalar(String.self)),
      GraphQLField("lastName", type: .scalar(String.self)),
      GraphQLField("avatar", type: .scalar(String.self)),
      GraphQLField("email", type: .scalar(String.self)),
      GraphQLField("primaryEmail", type: .scalar(String.self)),
      GraphQLField("phone", type: .scalar(String.self)),
      GraphQLField("isUser", type: .scalar(Bool.self)),
      GraphQLField("visitorContactInfo", type: .scalar(JSON.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, firstName: String? = nil, lastName: String? = nil, avatar: String? = nil, email: String? = nil, primaryEmail: String? = nil, phone: String? = nil, isUser: Bool? = nil, visitorContactInfo: JSON? = nil) {
      self.init(snapshot: ["__typename": "Customer", "_id": id, "firstName": firstName, "lastName": lastName, "avatar": avatar, "email": email, "primaryEmail": primaryEmail, "phone": phone, "isUser": isUser, "visitorContactInfo": visitorContactInfo])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var firstName: String? {
      get {
        return snapshot["firstName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "firstName")
      }
    }

    public var lastName: String? {
      get {
        return snapshot["lastName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "lastName")
      }
    }

    public var avatar: String? {
      get {
        return snapshot["avatar"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "avatar")
      }
    }

    public var email: String? {
      get {
        return snapshot["email"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "email")
      }
    }

    public var primaryEmail: String? {
      get {
        return snapshot["primaryEmail"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "primaryEmail")
      }
    }

    public var phone: String? {
      get {
        return snapshot["phone"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "phone")
      }
    }

    public var isUser: Bool? {
      get {
        return snapshot["isUser"] as? Bool
      }
      set {
        snapshot.updateValue(newValue, forKey: "isUser")
      }
    }

    public var visitorContactInfo: JSON? {
      get {
        return snapshot["visitorContactInfo"] as? JSON
      }
      set {
        snapshot.updateValue(newValue, forKey: "visitorContactInfo")
      }
    }
  }

  public struct Tag: GraphQLSelectionSet {
    public static let possibleTypes = ["Tag"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("_id", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(id: String, name: String? = nil) {
      self.init(snapshot: ["__typename": "Tag", "_id": id, "name": name])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var id: String {
      get {
        return snapshot["_id"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "_id")
      }
    }

    public var name: String? {
      get {
        return snapshot["name"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }
  }

  public struct TwitterDatum: GraphQLSelectionSet {
    public static let possibleTypes = ["TwitterData"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("isDirectMessage", type: .scalar(Bool.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(isDirectMessage: Bool? = nil) {
      self.init(snapshot: ["__typename": "TwitterData", "isDirectMessage": isDirectMessage])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var isDirectMessage: Bool? {
      get {
        return snapshot["isDirectMessage"] as? Bool
      }
      set {
        snapshot.updateValue(newValue, forKey: "isDirectMessage")
      }
    }
  }

  public struct FacebookDatum: GraphQLSelectionSet {
    public static let possibleTypes = ["ConversationFacebookData"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("kind", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(kind: String? = nil) {
      self.init(snapshot: ["__typename": "ConversationFacebookData", "kind": kind])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var kind: String? {
      get {
        return snapshot["kind"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "kind")
      }
    }
  }
}

public struct UserData: GraphQLFragment {
  public static let fragmentString =
    "fragment UserData on User {\n  __typename\n  _id\n  username\n  details {\n    __typename\n    fullName\n    avatar\n  }\n}"

  public static let possibleTypes = ["User"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("username", type: .scalar(String.self)),
    GraphQLField("details", type: .object(Detail.selections)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, username: String? = nil, details: Detail? = nil) {
    self.init(snapshot: ["__typename": "User", "_id": id, "username": username, "details": details.flatMap { (value: Detail) -> Snapshot in value.snapshot }])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var username: String? {
    get {
      return snapshot["username"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "username")
    }
  }

  public var details: Detail? {
    get {
      return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "details")
    }
  }

  public struct Detail: GraphQLSelectionSet {
    public static let possibleTypes = ["UserDetailsType"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("fullName", type: .scalar(String.self)),
      GraphQLField("avatar", type: .scalar(String.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fullName: String? = nil, avatar: String? = nil) {
      self.init(snapshot: ["__typename": "UserDetailsType", "fullName": fullName, "avatar": avatar])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fullName: String? {
      get {
        return snapshot["fullName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "fullName")
      }
    }

    public var avatar: String? {
      get {
        return snapshot["avatar"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "avatar")
      }
    }
  }
}

public struct NotificationConf: GraphQLFragment {
  public static let fragmentString =
    "fragment NotificationConf on NotificationConfiguration {\n  __typename\n  _id\n  notifType\n  isAllowed\n}"

  public static let possibleTypes = ["NotificationConfiguration"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("notifType", type: .scalar(String.self)),
    GraphQLField("isAllowed", type: .scalar(Bool.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, notifType: String? = nil, isAllowed: Bool? = nil) {
    self.init(snapshot: ["__typename": "NotificationConfiguration", "_id": id, "notifType": notifType, "isAllowed": isAllowed])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var notifType: String? {
    get {
      return snapshot["notifType"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "notifType")
    }
  }

  public var isAllowed: Bool? {
    get {
      return snapshot["isAllowed"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "isAllowed")
    }
  }
}

public struct ChannelObject: GraphQLFragment {
  public static let fragmentString =
    "fragment ChannelObject on Channel {\n  __typename\n  _id\n  name\n  description\n  memberIds\n}"

  public static let possibleTypes = ["Channel"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("memberIds", type: .list(.scalar(String.self))),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: String, name: String, description: String? = nil, memberIds: [String?]? = nil) {
    self.init(snapshot: ["__typename": "Channel", "_id": id, "name": name, "description": description, "memberIds": memberIds])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: String {
    get {
      return snapshot["_id"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  public var memberIds: [String?]? {
    get {
      return snapshot["memberIds"] as? [String?]
    }
    set {
      snapshot.updateValue(newValue, forKey: "memberIds")
    }
  }
}