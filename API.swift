//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTraumaTrackerPatientInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
    graphQLMap = ["title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature]
  }

  public var title: String {
    get {
      return graphQLMap["title"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var firstName: String {
    get {
      return graphQLMap["firstName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String {
    get {
      return graphQLMap["lastName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var pulseRate: Int {
    get {
      return graphQLMap["pulseRate"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pulseRate")
    }
  }

  public var spo2: Double {
    get {
      return graphQLMap["spo2"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "spo2")
    }
  }

  public var ecg: String {
    get {
      return graphQLMap["ecg"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ecg")
    }
  }

  public var bloodPressure: Double {
    get {
      return graphQLMap["bloodPressure"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressure")
    }
  }

  public var restingPulseRate: Double {
    get {
      return graphQLMap["restingPulseRate"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "restingPulseRate")
    }
  }

  public var bodyTemperature: Double {
    get {
      return graphQLMap["bodyTemperature"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bodyTemperature")
    }
  }
}

public struct UpdateTraumaTrackerPatientInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, title: String? = nil, firstName: String? = nil, lastName: String? = nil, pulseRate: Int? = nil, spo2: Double? = nil, ecg: String? = nil, bloodPressure: Double? = nil, restingPulseRate: Double? = nil, bodyTemperature: Double? = nil) {
    graphQLMap = ["id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["firstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["lastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var pulseRate: Int? {
    get {
      return graphQLMap["pulseRate"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pulseRate")
    }
  }

  public var spo2: Double? {
    get {
      return graphQLMap["spo2"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "spo2")
    }
  }

  public var ecg: String? {
    get {
      return graphQLMap["ecg"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ecg")
    }
  }

  public var bloodPressure: Double? {
    get {
      return graphQLMap["bloodPressure"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressure")
    }
  }

  public var restingPulseRate: Double? {
    get {
      return graphQLMap["restingPulseRate"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "restingPulseRate")
    }
  }

  public var bodyTemperature: Double? {
    get {
      return graphQLMap["bodyTemperature"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bodyTemperature")
    }
  }
}

public struct DeleteTraumaTrackerPatientInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct TableTraumaTrackerPatientFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: TableIDFilterInput? = nil, title: TableStringFilterInput? = nil, firstName: TableStringFilterInput? = nil, lastName: TableStringFilterInput? = nil, pulseRate: TableIntFilterInput? = nil, spo2: TableFloatFilterInput? = nil, bloodPressure: TableFloatFilterInput? = nil, restingPulseRate: TableFloatFilterInput? = nil, bodyTemperature: TableFloatFilterInput? = nil) {
    graphQLMap = ["id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature]
  }

  public var id: TableIDFilterInput? {
    get {
      return graphQLMap["id"] as! TableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: TableStringFilterInput? {
    get {
      return graphQLMap["title"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var firstName: TableStringFilterInput? {
    get {
      return graphQLMap["firstName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var lastName: TableStringFilterInput? {
    get {
      return graphQLMap["lastName"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var pulseRate: TableIntFilterInput? {
    get {
      return graphQLMap["pulseRate"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pulseRate")
    }
  }

  public var spo2: TableFloatFilterInput? {
    get {
      return graphQLMap["spo2"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "spo2")
    }
  }

  public var bloodPressure: TableFloatFilterInput? {
    get {
      return graphQLMap["bloodPressure"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressure")
    }
  }

  public var restingPulseRate: TableFloatFilterInput? {
    get {
      return graphQLMap["restingPulseRate"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "restingPulseRate")
    }
  }

  public var bodyTemperature: TableFloatFilterInput? {
    get {
      return graphQLMap["bodyTemperature"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bodyTemperature")
    }
  }
}

public struct TableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, contains: Int? = nil, notContains: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Int? {
    get {
      return graphQLMap["contains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Int? {
    get {
      return graphQLMap["notContains"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct TableFloatFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, contains: Double? = nil, notContains: Double? = nil, between: [Double?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Double? {
    get {
      return graphQLMap["contains"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Double? {
    get {
      return graphQLMap["notContains"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public final class CreateTraumaTrackerPatientMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTraumaTrackerPatient($input: CreateTraumaTrackerPatientInput!) {\n  createTraumaTrackerPatient(input: $input) {\n    __typename\n    id\n    title\n    firstName\n    lastName\n    pulseRate\n    spo2\n    ecg\n    bloodPressure\n    restingPulseRate\n    bodyTemperature\n  }\n}"

  public var input: CreateTraumaTrackerPatientInput

  public init(input: CreateTraumaTrackerPatientInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTraumaTrackerPatient", arguments: ["input": GraphQLVariable("input")], type: .object(CreateTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTraumaTrackerPatient: CreateTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTraumaTrackerPatient": createTraumaTrackerPatient.flatMap { $0.snapshot }])
    }

    public var createTraumaTrackerPatient: CreateTraumaTrackerPatient? {
      get {
        return (snapshot["createTraumaTrackerPatient"] as? Snapshot).flatMap { CreateTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTraumaTrackerPatient")
      }
    }

    public struct CreateTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatient"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var pulseRate: Int {
        get {
          return snapshot["pulseRate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "pulseRate")
        }
      }

      public var spo2: Double {
        get {
          return snapshot["spo2"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "spo2")
        }
      }

      public var ecg: String {
        get {
          return snapshot["ecg"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ecg")
        }
      }

      public var bloodPressure: Double {
        get {
          return snapshot["bloodPressure"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressure")
        }
      }

      public var restingPulseRate: Double {
        get {
          return snapshot["restingPulseRate"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "restingPulseRate")
        }
      }

      public var bodyTemperature: Double {
        get {
          return snapshot["bodyTemperature"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bodyTemperature")
        }
      }
    }
  }
}

public final class UpdateTraumaTrackerPatientMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTraumaTrackerPatient($input: UpdateTraumaTrackerPatientInput!) {\n  updateTraumaTrackerPatient(input: $input) {\n    __typename\n    id\n    title\n    firstName\n    lastName\n    pulseRate\n    spo2\n    ecg\n    bloodPressure\n    restingPulseRate\n    bodyTemperature\n  }\n}"

  public var input: UpdateTraumaTrackerPatientInput

  public init(input: UpdateTraumaTrackerPatientInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTraumaTrackerPatient", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTraumaTrackerPatient: UpdateTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTraumaTrackerPatient": updateTraumaTrackerPatient.flatMap { $0.snapshot }])
    }

    public var updateTraumaTrackerPatient: UpdateTraumaTrackerPatient? {
      get {
        return (snapshot["updateTraumaTrackerPatient"] as? Snapshot).flatMap { UpdateTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTraumaTrackerPatient")
      }
    }

    public struct UpdateTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatient"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var pulseRate: Int {
        get {
          return snapshot["pulseRate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "pulseRate")
        }
      }

      public var spo2: Double {
        get {
          return snapshot["spo2"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "spo2")
        }
      }

      public var ecg: String {
        get {
          return snapshot["ecg"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ecg")
        }
      }

      public var bloodPressure: Double {
        get {
          return snapshot["bloodPressure"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressure")
        }
      }

      public var restingPulseRate: Double {
        get {
          return snapshot["restingPulseRate"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "restingPulseRate")
        }
      }

      public var bodyTemperature: Double {
        get {
          return snapshot["bodyTemperature"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bodyTemperature")
        }
      }
    }
  }
}

public final class DeleteTraumaTrackerPatientMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTraumaTrackerPatient($input: DeleteTraumaTrackerPatientInput!) {\n  deleteTraumaTrackerPatient(input: $input) {\n    __typename\n    id\n    title\n    firstName\n    lastName\n    pulseRate\n    spo2\n    ecg\n    bloodPressure\n    restingPulseRate\n    bodyTemperature\n  }\n}"

  public var input: DeleteTraumaTrackerPatientInput

  public init(input: DeleteTraumaTrackerPatientInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTraumaTrackerPatient", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTraumaTrackerPatient: DeleteTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTraumaTrackerPatient": deleteTraumaTrackerPatient.flatMap { $0.snapshot }])
    }

    public var deleteTraumaTrackerPatient: DeleteTraumaTrackerPatient? {
      get {
        return (snapshot["deleteTraumaTrackerPatient"] as? Snapshot).flatMap { DeleteTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTraumaTrackerPatient")
      }
    }

    public struct DeleteTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatient"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var pulseRate: Int {
        get {
          return snapshot["pulseRate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "pulseRate")
        }
      }

      public var spo2: Double {
        get {
          return snapshot["spo2"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "spo2")
        }
      }

      public var ecg: String {
        get {
          return snapshot["ecg"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ecg")
        }
      }

      public var bloodPressure: Double {
        get {
          return snapshot["bloodPressure"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressure")
        }
      }

      public var restingPulseRate: Double {
        get {
          return snapshot["restingPulseRate"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "restingPulseRate")
        }
      }

      public var bodyTemperature: Double {
        get {
          return snapshot["bodyTemperature"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bodyTemperature")
        }
      }
    }
  }
}

public final class GetTraumaTrackerPatientQuery: GraphQLQuery {
  public static let operationString =
    "query GetTraumaTrackerPatient($id: ID!) {\n  getTraumaTrackerPatient(id: $id) {\n    __typename\n    id\n    title\n    firstName\n    lastName\n    pulseRate\n    spo2\n    ecg\n    bloodPressure\n    restingPulseRate\n    bodyTemperature\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTraumaTrackerPatient", arguments: ["id": GraphQLVariable("id")], type: .object(GetTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTraumaTrackerPatient: GetTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTraumaTrackerPatient": getTraumaTrackerPatient.flatMap { $0.snapshot }])
    }

    public var getTraumaTrackerPatient: GetTraumaTrackerPatient? {
      get {
        return (snapshot["getTraumaTrackerPatient"] as? Snapshot).flatMap { GetTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTraumaTrackerPatient")
      }
    }

    public struct GetTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatient"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var pulseRate: Int {
        get {
          return snapshot["pulseRate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "pulseRate")
        }
      }

      public var spo2: Double {
        get {
          return snapshot["spo2"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "spo2")
        }
      }

      public var ecg: String {
        get {
          return snapshot["ecg"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ecg")
        }
      }

      public var bloodPressure: Double {
        get {
          return snapshot["bloodPressure"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressure")
        }
      }

      public var restingPulseRate: Double {
        get {
          return snapshot["restingPulseRate"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "restingPulseRate")
        }
      }

      public var bodyTemperature: Double {
        get {
          return snapshot["bodyTemperature"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bodyTemperature")
        }
      }
    }
  }
}

public final class ListTraumaTrackerPatientsQuery: GraphQLQuery {
  public static let operationString =
    "query ListTraumaTrackerPatients($filter: TableTraumaTrackerPatientFilterInput, $limit: Int, $nextToken: String) {\n  listTraumaTrackerPatients(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      firstName\n      lastName\n      pulseRate\n      spo2\n      ecg\n      bloodPressure\n      restingPulseRate\n      bodyTemperature\n    }\n    nextToken\n  }\n}"

  public var filter: TableTraumaTrackerPatientFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableTraumaTrackerPatientFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTraumaTrackerPatients", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTraumaTrackerPatients: ListTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTraumaTrackerPatients": listTraumaTrackerPatients.flatMap { $0.snapshot }])
    }

    public var listTraumaTrackerPatients: ListTraumaTrackerPatient? {
      get {
        return (snapshot["listTraumaTrackerPatients"] as? Snapshot).flatMap { ListTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTraumaTrackerPatients")
      }
    }

    public struct ListTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatientConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatientConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["TraumaTrackerPatient"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
          GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
          GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
          GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
          GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
          GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
          GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
          GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
          self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var firstName: String {
          get {
            return snapshot["firstName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstName")
          }
        }

        public var lastName: String {
          get {
            return snapshot["lastName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastName")
          }
        }

        public var pulseRate: Int {
          get {
            return snapshot["pulseRate"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "pulseRate")
          }
        }

        public var spo2: Double {
          get {
            return snapshot["spo2"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "spo2")
          }
        }

        public var ecg: String {
          get {
            return snapshot["ecg"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ecg")
          }
        }

        public var bloodPressure: Double {
          get {
            return snapshot["bloodPressure"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "bloodPressure")
          }
        }

        public var restingPulseRate: Double {
          get {
            return snapshot["restingPulseRate"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "restingPulseRate")
          }
        }

        public var bodyTemperature: Double {
          get {
            return snapshot["bodyTemperature"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "bodyTemperature")
          }
        }
      }
    }
  }
}

public final class OnCreateTraumaTrackerPatientSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTraumaTrackerPatient($id: ID, $title: String, $firstName: String, $lastName: String, $pulseRate: Int) {\n  onCreateTraumaTrackerPatient(id: $id, title: $title, firstName: $firstName, lastName: $lastName, pulseRate: $pulseRate) {\n    __typename\n    id\n    title\n    firstName\n    lastName\n    pulseRate\n    spo2\n    ecg\n    bloodPressure\n    restingPulseRate\n    bodyTemperature\n  }\n}"

  public var id: GraphQLID?
  public var title: String?
  public var firstName: String?
  public var lastName: String?
  public var pulseRate: Int?

  public init(id: GraphQLID? = nil, title: String? = nil, firstName: String? = nil, lastName: String? = nil, pulseRate: Int? = nil) {
    self.id = id
    self.title = title
    self.firstName = firstName
    self.lastName = lastName
    self.pulseRate = pulseRate
  }

  public var variables: GraphQLMap? {
    return ["id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTraumaTrackerPatient", arguments: ["id": GraphQLVariable("id"), "title": GraphQLVariable("title"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName"), "pulseRate": GraphQLVariable("pulseRate")], type: .object(OnCreateTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTraumaTrackerPatient: OnCreateTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTraumaTrackerPatient": onCreateTraumaTrackerPatient.flatMap { $0.snapshot }])
    }

    public var onCreateTraumaTrackerPatient: OnCreateTraumaTrackerPatient? {
      get {
        return (snapshot["onCreateTraumaTrackerPatient"] as? Snapshot).flatMap { OnCreateTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTraumaTrackerPatient")
      }
    }

    public struct OnCreateTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatient"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var pulseRate: Int {
        get {
          return snapshot["pulseRate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "pulseRate")
        }
      }

      public var spo2: Double {
        get {
          return snapshot["spo2"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "spo2")
        }
      }

      public var ecg: String {
        get {
          return snapshot["ecg"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ecg")
        }
      }

      public var bloodPressure: Double {
        get {
          return snapshot["bloodPressure"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressure")
        }
      }

      public var restingPulseRate: Double {
        get {
          return snapshot["restingPulseRate"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "restingPulseRate")
        }
      }

      public var bodyTemperature: Double {
        get {
          return snapshot["bodyTemperature"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bodyTemperature")
        }
      }
    }
  }
}

public final class OnUpdateTraumaTrackerPatientSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTraumaTrackerPatient($id: ID, $title: String, $firstName: String, $lastName: String, $pulseRate: Int) {\n  onUpdateTraumaTrackerPatient(id: $id, title: $title, firstName: $firstName, lastName: $lastName, pulseRate: $pulseRate) {\n    __typename\n    id\n    title\n    firstName\n    lastName\n    pulseRate\n    spo2\n    ecg\n    bloodPressure\n    restingPulseRate\n    bodyTemperature\n  }\n}"

  public var id: GraphQLID?
  public var title: String?
  public var firstName: String?
  public var lastName: String?
  public var pulseRate: Int?

  public init(id: GraphQLID? = nil, title: String? = nil, firstName: String? = nil, lastName: String? = nil, pulseRate: Int? = nil) {
    self.id = id
    self.title = title
    self.firstName = firstName
    self.lastName = lastName
    self.pulseRate = pulseRate
  }

  public var variables: GraphQLMap? {
    return ["id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTraumaTrackerPatient", arguments: ["id": GraphQLVariable("id"), "title": GraphQLVariable("title"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName"), "pulseRate": GraphQLVariable("pulseRate")], type: .object(OnUpdateTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTraumaTrackerPatient: OnUpdateTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTraumaTrackerPatient": onUpdateTraumaTrackerPatient.flatMap { $0.snapshot }])
    }

    public var onUpdateTraumaTrackerPatient: OnUpdateTraumaTrackerPatient? {
      get {
        return (snapshot["onUpdateTraumaTrackerPatient"] as? Snapshot).flatMap { OnUpdateTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTraumaTrackerPatient")
      }
    }

    public struct OnUpdateTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatient"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var pulseRate: Int {
        get {
          return snapshot["pulseRate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "pulseRate")
        }
      }

      public var spo2: Double {
        get {
          return snapshot["spo2"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "spo2")
        }
      }

      public var ecg: String {
        get {
          return snapshot["ecg"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ecg")
        }
      }

      public var bloodPressure: Double {
        get {
          return snapshot["bloodPressure"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressure")
        }
      }

      public var restingPulseRate: Double {
        get {
          return snapshot["restingPulseRate"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "restingPulseRate")
        }
      }

      public var bodyTemperature: Double {
        get {
          return snapshot["bodyTemperature"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bodyTemperature")
        }
      }
    }
  }
}

public final class OnDeleteTraumaTrackerPatientSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTraumaTrackerPatient($id: ID, $title: String, $firstName: String, $lastName: String, $pulseRate: Int) {\n  onDeleteTraumaTrackerPatient(id: $id, title: $title, firstName: $firstName, lastName: $lastName, pulseRate: $pulseRate) {\n    __typename\n    id\n    title\n    firstName\n    lastName\n    pulseRate\n    spo2\n    ecg\n    bloodPressure\n    restingPulseRate\n    bodyTemperature\n  }\n}"

  public var id: GraphQLID?
  public var title: String?
  public var firstName: String?
  public var lastName: String?
  public var pulseRate: Int?

  public init(id: GraphQLID? = nil, title: String? = nil, firstName: String? = nil, lastName: String? = nil, pulseRate: Int? = nil) {
    self.id = id
    self.title = title
    self.firstName = firstName
    self.lastName = lastName
    self.pulseRate = pulseRate
  }

  public var variables: GraphQLMap? {
    return ["id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTraumaTrackerPatient", arguments: ["id": GraphQLVariable("id"), "title": GraphQLVariable("title"), "firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName"), "pulseRate": GraphQLVariable("pulseRate")], type: .object(OnDeleteTraumaTrackerPatient.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTraumaTrackerPatient: OnDeleteTraumaTrackerPatient? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTraumaTrackerPatient": onDeleteTraumaTrackerPatient.flatMap { $0.snapshot }])
    }

    public var onDeleteTraumaTrackerPatient: OnDeleteTraumaTrackerPatient? {
      get {
        return (snapshot["onDeleteTraumaTrackerPatient"] as? Snapshot).flatMap { OnDeleteTraumaTrackerPatient(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTraumaTrackerPatient")
      }
    }

    public struct OnDeleteTraumaTrackerPatient: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTrackerPatient"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressure", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, firstName: String, lastName: String, pulseRate: Int, spo2: Double, ecg: String, bloodPressure: Double, restingPulseRate: Double, bodyTemperature: Double) {
        self.init(snapshot: ["__typename": "TraumaTrackerPatient", "id": id, "title": title, "firstName": firstName, "lastName": lastName, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressure": bloodPressure, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var firstName: String {
        get {
          return snapshot["firstName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return snapshot["lastName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastName")
        }
      }

      public var pulseRate: Int {
        get {
          return snapshot["pulseRate"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "pulseRate")
        }
      }

      public var spo2: Double {
        get {
          return snapshot["spo2"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "spo2")
        }
      }

      public var ecg: String {
        get {
          return snapshot["ecg"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ecg")
        }
      }

      public var bloodPressure: Double {
        get {
          return snapshot["bloodPressure"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressure")
        }
      }

      public var restingPulseRate: Double {
        get {
          return snapshot["restingPulseRate"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "restingPulseRate")
        }
      }

      public var bodyTemperature: Double {
        get {
          return snapshot["bodyTemperature"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bodyTemperature")
        }
      }
    }
  }
}