//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTraumaTracker2Input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
    graphQLMap = ["roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender]
  }

  public var roomNumber: String {
    get {
      return graphQLMap["roomNumber"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "roomNumber")
    }
  }

  public var pulseRate: Double {
    get {
      return graphQLMap["pulseRate"] as! Double
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

  public var bloodPressureSystolic: Double {
    get {
      return graphQLMap["bloodPressureSystolic"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressureSystolic")
    }
  }

  public var bloodPressureDiastolic: Double {
    get {
      return graphQLMap["bloodPressureDiastolic"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

  public var age: Int? {
    get {
      return graphQLMap["age"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "age")
    }
  }

  public var gender: String? {
    get {
      return graphQLMap["gender"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }
}

public struct UpdateTraumaTracker2Input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(roomNumber: String, pulseRate: Double? = nil, spo2: Double? = nil, ecg: String? = nil, bloodPressureSystolic: Double? = nil, bloodPressureDiastolic: Double? = nil, restingPulseRate: Double? = nil, bodyTemperature: Double? = nil, age: Int? = nil, gender: String? = nil) {
    graphQLMap = ["roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender]
  }

  public var roomNumber: String {
    get {
      return graphQLMap["roomNumber"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "roomNumber")
    }
  }

  public var pulseRate: Double? {
    get {
      return graphQLMap["pulseRate"] as! Double?
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

  public var bloodPressureSystolic: Double? {
    get {
      return graphQLMap["bloodPressureSystolic"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressureSystolic")
    }
  }

  public var bloodPressureDiastolic: Double? {
    get {
      return graphQLMap["bloodPressureDiastolic"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

  public var age: Int? {
    get {
      return graphQLMap["age"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "age")
    }
  }

  public var gender: String? {
    get {
      return graphQLMap["gender"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }
}

public struct DeleteTraumaTracker2Input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(roomNumber: String) {
    graphQLMap = ["roomNumber": roomNumber]
  }

  public var roomNumber: String {
    get {
      return graphQLMap["roomNumber"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "roomNumber")
    }
  }
}

public struct TableTraumaTracker2FilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(roomNumber: TableStringFilterInput? = nil, pulseRate: TableFloatFilterInput? = nil, spo2: TableFloatFilterInput? = nil, bloodPressureSystolic: TableFloatFilterInput? = nil, bloodPressureDiastolic: TableFloatFilterInput? = nil, restingPulseRate: TableFloatFilterInput? = nil, bodyTemperature: TableFloatFilterInput? = nil, age: TableIntFilterInput? = nil, gender: TableStringFilterInput? = nil) {
    graphQLMap = ["roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender]
  }

  public var roomNumber: TableStringFilterInput? {
    get {
      return graphQLMap["roomNumber"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "roomNumber")
    }
  }

  public var pulseRate: TableFloatFilterInput? {
    get {
      return graphQLMap["pulseRate"] as! TableFloatFilterInput?
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

  public var bloodPressureSystolic: TableFloatFilterInput? {
    get {
      return graphQLMap["bloodPressureSystolic"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressureSystolic")
    }
  }

  public var bloodPressureDiastolic: TableFloatFilterInput? {
    get {
      return graphQLMap["bloodPressureDiastolic"] as! TableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

  public var age: TableIntFilterInput? {
    get {
      return graphQLMap["age"] as! TableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "age")
    }
  }

  public var gender: TableStringFilterInput? {
    get {
      return graphQLMap["gender"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
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

public final class CreateTraumaTracker2Mutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTraumaTracker2($input: CreateTraumaTracker2Input!) {\n  createTraumaTracker2(input: $input) {\n    __typename\n    roomNumber\n    pulseRate\n    spo2\n    ecg\n    bloodPressureSystolic\n    bloodPressureDiastolic\n    restingPulseRate\n    bodyTemperature\n    age\n    gender\n  }\n}"

  public var input: CreateTraumaTracker2Input

  public init(input: CreateTraumaTracker2Input) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTraumaTracker2", arguments: ["input": GraphQLVariable("input")], type: .object(CreateTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTraumaTracker2: CreateTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTraumaTracker2": createTraumaTracker2.flatMap { $0.snapshot }])
    }

    public var createTraumaTracker2: CreateTraumaTracker2? {
      get {
        return (snapshot["createTraumaTracker2"] as? Snapshot).flatMap { CreateTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTraumaTracker2")
      }
    }

    public struct CreateTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("gender", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var roomNumber: String {
        get {
          return snapshot["roomNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roomNumber")
        }
      }

      public var pulseRate: Double {
        get {
          return snapshot["pulseRate"]! as! Double
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

      public var bloodPressureSystolic: Double {
        get {
          return snapshot["bloodPressureSystolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
        }
      }

      public var bloodPressureDiastolic: Double {
        get {
          return snapshot["bloodPressureDiastolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

      public var age: Int? {
        get {
          return snapshot["age"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }
    }
  }
}

public final class UpdateTraumaTracker2Mutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTraumaTracker2($input: UpdateTraumaTracker2Input!) {\n  updateTraumaTracker2(input: $input) {\n    __typename\n    roomNumber\n    pulseRate\n    spo2\n    ecg\n    bloodPressureSystolic\n    bloodPressureDiastolic\n    restingPulseRate\n    bodyTemperature\n    age\n    gender\n  }\n}"

  public var input: UpdateTraumaTracker2Input

  public init(input: UpdateTraumaTracker2Input) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTraumaTracker2", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTraumaTracker2: UpdateTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTraumaTracker2": updateTraumaTracker2.flatMap { $0.snapshot }])
    }

    public var updateTraumaTracker2: UpdateTraumaTracker2? {
      get {
        return (snapshot["updateTraumaTracker2"] as? Snapshot).flatMap { UpdateTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTraumaTracker2")
      }
    }

    public struct UpdateTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("gender", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var roomNumber: String {
        get {
          return snapshot["roomNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roomNumber")
        }
      }

      public var pulseRate: Double {
        get {
          return snapshot["pulseRate"]! as! Double
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

      public var bloodPressureSystolic: Double {
        get {
          return snapshot["bloodPressureSystolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
        }
      }

      public var bloodPressureDiastolic: Double {
        get {
          return snapshot["bloodPressureDiastolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

      public var age: Int? {
        get {
          return snapshot["age"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }
    }
  }
}

public final class DeleteTraumaTracker2Mutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTraumaTracker2($input: DeleteTraumaTracker2Input!) {\n  deleteTraumaTracker2(input: $input) {\n    __typename\n    roomNumber\n    pulseRate\n    spo2\n    ecg\n    bloodPressureSystolic\n    bloodPressureDiastolic\n    restingPulseRate\n    bodyTemperature\n    age\n    gender\n  }\n}"

  public var input: DeleteTraumaTracker2Input

  public init(input: DeleteTraumaTracker2Input) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTraumaTracker2", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTraumaTracker2: DeleteTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTraumaTracker2": deleteTraumaTracker2.flatMap { $0.snapshot }])
    }

    public var deleteTraumaTracker2: DeleteTraumaTracker2? {
      get {
        return (snapshot["deleteTraumaTracker2"] as? Snapshot).flatMap { DeleteTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTraumaTracker2")
      }
    }

    public struct DeleteTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("gender", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var roomNumber: String {
        get {
          return snapshot["roomNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roomNumber")
        }
      }

      public var pulseRate: Double {
        get {
          return snapshot["pulseRate"]! as! Double
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

      public var bloodPressureSystolic: Double {
        get {
          return snapshot["bloodPressureSystolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
        }
      }

      public var bloodPressureDiastolic: Double {
        get {
          return snapshot["bloodPressureDiastolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

      public var age: Int? {
        get {
          return snapshot["age"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }
    }
  }
}

public final class GetTraumaTracker2Query: GraphQLQuery {
  public static let operationString =
    "query GetTraumaTracker2($roomNumber: String!) {\n  getTraumaTracker2(roomNumber: $roomNumber) {\n    __typename\n    roomNumber\n    pulseRate\n    spo2\n    ecg\n    bloodPressureSystolic\n    bloodPressureDiastolic\n    restingPulseRate\n    bodyTemperature\n    age\n    gender\n  }\n}"

  public var roomNumber: String

  public init(roomNumber: String) {
    self.roomNumber = roomNumber
  }

  public var variables: GraphQLMap? {
    return ["roomNumber": roomNumber]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTraumaTracker2", arguments: ["roomNumber": GraphQLVariable("roomNumber")], type: .object(GetTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTraumaTracker2: GetTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTraumaTracker2": getTraumaTracker2.flatMap { $0.snapshot }])
    }

    public var getTraumaTracker2: GetTraumaTracker2? {
      get {
        return (snapshot["getTraumaTracker2"] as? Snapshot).flatMap { GetTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTraumaTracker2")
      }
    }

    public struct GetTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("gender", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var roomNumber: String {
        get {
          return snapshot["roomNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roomNumber")
        }
      }

      public var pulseRate: Double {
        get {
          return snapshot["pulseRate"]! as! Double
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

      public var bloodPressureSystolic: Double {
        get {
          return snapshot["bloodPressureSystolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
        }
      }

      public var bloodPressureDiastolic: Double {
        get {
          return snapshot["bloodPressureDiastolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

      public var age: Int? {
        get {
          return snapshot["age"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }
    }
  }
}

public final class ListTraumaTracker2SQuery: GraphQLQuery {
  public static let operationString =
    "query ListTraumaTracker2S($filter: TableTraumaTracker2FilterInput, $limit: Int, $nextToken: String) {\n  listTraumaTracker2S(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      roomNumber\n      pulseRate\n      spo2\n      ecg\n      bloodPressureSystolic\n      bloodPressureDiastolic\n      restingPulseRate\n      bodyTemperature\n      age\n      gender\n    }\n    nextToken\n  }\n}"

  public var filter: TableTraumaTracker2FilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: TableTraumaTracker2FilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
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
      GraphQLField("listTraumaTracker2S", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTraumaTracker2S: ListTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTraumaTracker2S": listTraumaTracker2S.flatMap { $0.snapshot }])
    }

    public var listTraumaTracker2S: ListTraumaTracker2? {
      get {
        return (snapshot["listTraumaTracker2S"] as? Snapshot).flatMap { ListTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTraumaTracker2S")
      }
    }

    public struct ListTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2Connection"]

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
        self.init(snapshot: ["__typename": "TraumaTracker2Connection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
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
        public static let possibleTypes = ["TraumaTracker2"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
          GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
          GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
          GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
          GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
          GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
          GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
          GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
          GraphQLField("age", type: .scalar(Int.self)),
          GraphQLField("gender", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
          self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var roomNumber: String {
          get {
            return snapshot["roomNumber"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "roomNumber")
          }
        }

        public var pulseRate: Double {
          get {
            return snapshot["pulseRate"]! as! Double
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

        public var bloodPressureSystolic: Double {
          get {
            return snapshot["bloodPressureSystolic"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
          }
        }

        public var bloodPressureDiastolic: Double {
          get {
            return snapshot["bloodPressureDiastolic"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

        public var age: Int? {
          get {
            return snapshot["age"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "age")
          }
        }

        public var gender: String? {
          get {
            return snapshot["gender"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "gender")
          }
        }
      }
    }
  }
}

public final class OnCreateTraumaTracker2Subscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTraumaTracker2($roomNumber: String, $pulseRate: Float, $spo2: Float, $ecg: AWSJSON, $bloodPressureSystolic: Float) {\n  onCreateTraumaTracker2(roomNumber: $roomNumber, pulseRate: $pulseRate, spo2: $spo2, ecg: $ecg, bloodPressureSystolic: $bloodPressureSystolic) {\n    __typename\n    roomNumber\n    pulseRate\n    spo2\n    ecg\n    bloodPressureSystolic\n    bloodPressureDiastolic\n    restingPulseRate\n    bodyTemperature\n    age\n    gender\n  }\n}"

  public var roomNumber: String?
  public var pulseRate: Double?
  public var spo2: Double?
  public var ecg: String?
  public var bloodPressureSystolic: Double?

  public init(roomNumber: String? = nil, pulseRate: Double? = nil, spo2: Double? = nil, ecg: String? = nil, bloodPressureSystolic: Double? = nil) {
    self.roomNumber = roomNumber
    self.pulseRate = pulseRate
    self.spo2 = spo2
    self.ecg = ecg
    self.bloodPressureSystolic = bloodPressureSystolic
  }

  public var variables: GraphQLMap? {
    return ["roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTraumaTracker2", arguments: ["roomNumber": GraphQLVariable("roomNumber"), "pulseRate": GraphQLVariable("pulseRate"), "spo2": GraphQLVariable("spo2"), "ecg": GraphQLVariable("ecg"), "bloodPressureSystolic": GraphQLVariable("bloodPressureSystolic")], type: .object(OnCreateTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTraumaTracker2: OnCreateTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTraumaTracker2": onCreateTraumaTracker2.flatMap { $0.snapshot }])
    }

    public var onCreateTraumaTracker2: OnCreateTraumaTracker2? {
      get {
        return (snapshot["onCreateTraumaTracker2"] as? Snapshot).flatMap { OnCreateTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTraumaTracker2")
      }
    }

    public struct OnCreateTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("gender", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var roomNumber: String {
        get {
          return snapshot["roomNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roomNumber")
        }
      }

      public var pulseRate: Double {
        get {
          return snapshot["pulseRate"]! as! Double
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

      public var bloodPressureSystolic: Double {
        get {
          return snapshot["bloodPressureSystolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
        }
      }

      public var bloodPressureDiastolic: Double {
        get {
          return snapshot["bloodPressureDiastolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

      public var age: Int? {
        get {
          return snapshot["age"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }
    }
  }
}

public final class OnUpdateTraumaTracker2Subscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTraumaTracker2($roomNumber: String, $pulseRate: Float, $spo2: Float, $ecg: AWSJSON, $bloodPressureSystolic: Float) {\n  onUpdateTraumaTracker2(roomNumber: $roomNumber, pulseRate: $pulseRate, spo2: $spo2, ecg: $ecg, bloodPressureSystolic: $bloodPressureSystolic) {\n    __typename\n    roomNumber\n    pulseRate\n    spo2\n    ecg\n    bloodPressureSystolic\n    bloodPressureDiastolic\n    restingPulseRate\n    bodyTemperature\n    age\n    gender\n  }\n}"

  public var roomNumber: String?
  public var pulseRate: Double?
  public var spo2: Double?
  public var ecg: String?
  public var bloodPressureSystolic: Double?

  public init(roomNumber: String? = nil, pulseRate: Double? = nil, spo2: Double? = nil, ecg: String? = nil, bloodPressureSystolic: Double? = nil) {
    self.roomNumber = roomNumber
    self.pulseRate = pulseRate
    self.spo2 = spo2
    self.ecg = ecg
    self.bloodPressureSystolic = bloodPressureSystolic
  }

  public var variables: GraphQLMap? {
    return ["roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTraumaTracker2", arguments: ["roomNumber": GraphQLVariable("roomNumber"), "pulseRate": GraphQLVariable("pulseRate"), "spo2": GraphQLVariable("spo2"), "ecg": GraphQLVariable("ecg"), "bloodPressureSystolic": GraphQLVariable("bloodPressureSystolic")], type: .object(OnUpdateTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTraumaTracker2: OnUpdateTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTraumaTracker2": onUpdateTraumaTracker2.flatMap { $0.snapshot }])
    }

    public var onUpdateTraumaTracker2: OnUpdateTraumaTracker2? {
      get {
        return (snapshot["onUpdateTraumaTracker2"] as? Snapshot).flatMap { OnUpdateTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTraumaTracker2")
      }
    }

    public struct OnUpdateTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("gender", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var roomNumber: String {
        get {
          return snapshot["roomNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roomNumber")
        }
      }

      public var pulseRate: Double {
        get {
          return snapshot["pulseRate"]! as! Double
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

      public var bloodPressureSystolic: Double {
        get {
          return snapshot["bloodPressureSystolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
        }
      }

      public var bloodPressureDiastolic: Double {
        get {
          return snapshot["bloodPressureDiastolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

      public var age: Int? {
        get {
          return snapshot["age"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }
    }
  }
}

public final class OnDeleteTraumaTracker2Subscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTraumaTracker2($roomNumber: String, $pulseRate: Float, $spo2: Float, $ecg: AWSJSON, $bloodPressureSystolic: Float) {\n  onDeleteTraumaTracker2(roomNumber: $roomNumber, pulseRate: $pulseRate, spo2: $spo2, ecg: $ecg, bloodPressureSystolic: $bloodPressureSystolic) {\n    __typename\n    roomNumber\n    pulseRate\n    spo2\n    ecg\n    bloodPressureSystolic\n    bloodPressureDiastolic\n    restingPulseRate\n    bodyTemperature\n    age\n    gender\n  }\n}"

  public var roomNumber: String?
  public var pulseRate: Double?
  public var spo2: Double?
  public var ecg: String?
  public var bloodPressureSystolic: Double?

  public init(roomNumber: String? = nil, pulseRate: Double? = nil, spo2: Double? = nil, ecg: String? = nil, bloodPressureSystolic: Double? = nil) {
    self.roomNumber = roomNumber
    self.pulseRate = pulseRate
    self.spo2 = spo2
    self.ecg = ecg
    self.bloodPressureSystolic = bloodPressureSystolic
  }

  public var variables: GraphQLMap? {
    return ["roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTraumaTracker2", arguments: ["roomNumber": GraphQLVariable("roomNumber"), "pulseRate": GraphQLVariable("pulseRate"), "spo2": GraphQLVariable("spo2"), "ecg": GraphQLVariable("ecg"), "bloodPressureSystolic": GraphQLVariable("bloodPressureSystolic")], type: .object(OnDeleteTraumaTracker2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTraumaTracker2: OnDeleteTraumaTracker2? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTraumaTracker2": onDeleteTraumaTracker2.flatMap { $0.snapshot }])
    }

    public var onDeleteTraumaTracker2: OnDeleteTraumaTracker2? {
      get {
        return (snapshot["onDeleteTraumaTracker2"] as? Snapshot).flatMap { OnDeleteTraumaTracker2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTraumaTracker2")
      }
    }

    public struct OnDeleteTraumaTracker2: GraphQLSelectionSet {
      public static let possibleTypes = ["TraumaTracker2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("roomNumber", type: .nonNull(.scalar(String.self))),
        GraphQLField("pulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("spo2", type: .nonNull(.scalar(Double.self))),
        GraphQLField("ecg", type: .nonNull(.scalar(String.self))),
        GraphQLField("bloodPressureSystolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bloodPressureDiastolic", type: .nonNull(.scalar(Double.self))),
        GraphQLField("restingPulseRate", type: .nonNull(.scalar(Double.self))),
        GraphQLField("bodyTemperature", type: .nonNull(.scalar(Double.self))),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("gender", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(roomNumber: String, pulseRate: Double, spo2: Double, ecg: String, bloodPressureSystolic: Double, bloodPressureDiastolic: Double, restingPulseRate: Double, bodyTemperature: Double, age: Int? = nil, gender: String? = nil) {
        self.init(snapshot: ["__typename": "TraumaTracker2", "roomNumber": roomNumber, "pulseRate": pulseRate, "spo2": spo2, "ecg": ecg, "bloodPressureSystolic": bloodPressureSystolic, "bloodPressureDiastolic": bloodPressureDiastolic, "restingPulseRate": restingPulseRate, "bodyTemperature": bodyTemperature, "age": age, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var roomNumber: String {
        get {
          return snapshot["roomNumber"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "roomNumber")
        }
      }

      public var pulseRate: Double {
        get {
          return snapshot["pulseRate"]! as! Double
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

      public var bloodPressureSystolic: Double {
        get {
          return snapshot["bloodPressureSystolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureSystolic")
        }
      }

      public var bloodPressureDiastolic: Double {
        get {
          return snapshot["bloodPressureDiastolic"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "bloodPressureDiastolic")
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

      public var age: Int? {
        get {
          return snapshot["age"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "age")
        }
      }

      public var gender: String? {
        get {
          return snapshot["gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }
    }
  }
}
