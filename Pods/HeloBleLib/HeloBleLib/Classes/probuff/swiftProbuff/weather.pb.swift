// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: weather.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum WeatherOperation: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case add // = 0
  case clear // = 1

  init() {
    self = .add
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .add
    case 1: self = .clear
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .add: return 0
    case .clear: return 1
    }
  }

}

enum WeatherDesc: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case sunny // = 0
  case cloudy // = 1
  case overcast // = 2
  case lightRain // = 3
  case moderateRain // = 4
  case heavyRain // = 5
  case rainstorm // = 6
  case snow // = 7
  case haze // = 8
  case sandStorm // = 9
  case cloudyTurnToFine // = 10
  case thunderstorm // = 11

  init() {
    self = .sunny
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .sunny
    case 1: self = .cloudy
    case 2: self = .overcast
    case 3: self = .lightRain
    case 4: self = .moderateRain
    case 5: self = .heavyRain
    case 6: self = .rainstorm
    case 7: self = .snow
    case 8: self = .haze
    case 9: self = .sandStorm
    case 10: self = .cloudyTurnToFine
    case 11: self = .thunderstorm
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .sunny: return 0
    case .cloudy: return 1
    case .overcast: return 2
    case .lightRain: return 3
    case .moderateRain: return 4
    case .heavyRain: return 5
    case .rainstorm: return 6
    case .snow: return 7
    case .haze: return 8
    case .sandStorm: return 9
    case .cloudyTurnToFine: return 10
    case .thunderstorm: return 11
    }
  }

}

enum WeatherType: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case eachHour // = 0
  case eachDay // = 1

  init() {
    self = .eachHour
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .eachHour
    case 1: self = .eachDay
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .eachHour: return 0
    case .eachDay: return 1
    }
  }

}

struct Weather: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// unique id
  var dateTime: RtTime {
    get {return _dateTime ?? RtTime()}
    set {_dateTime = newValue}
  }
  /// Returns true if `dateTime` has been explicitly set.
  var hasDateTime: Bool {return self._dateTime != nil}
  /// Clears the value of `dateTime`. Subsequent reads from it will return its default value.
  mutating func clearDateTime() {self._dateTime = nil}

  var type: WeatherType {
    get {return _type ?? .eachHour}
    set {_type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  var hasType: Bool {return self._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  mutating func clearType() {self._type = nil}

  var desc: WeatherDesc {
    get {return _desc ?? .sunny}
    set {_desc = newValue}
  }
  /// Returns true if `desc` has been explicitly set.
  var hasDesc: Bool {return self._desc != nil}
  /// Clears the value of `desc`. Subsequent reads from it will return its default value.
  mutating func clearDesc() {self._desc = nil}

  var degreeMax: Int32 {
    get {return _degreeMax ?? 0}
    set {_degreeMax = newValue}
  }
  /// Returns true if `degreeMax` has been explicitly set.
  var hasDegreeMax: Bool {return self._degreeMax != nil}
  /// Clears the value of `degreeMax`. Subsequent reads from it will return its default value.
  mutating func clearDegreeMax() {self._degreeMax = nil}

  var degreeMin: Int32 {
    get {return _degreeMin ?? 0}
    set {_degreeMin = newValue}
  }
  /// Returns true if `degreeMin` has been explicitly set.
  var hasDegreeMin: Bool {return self._degreeMin != nil}
  /// Clears the value of `degreeMin`. Subsequent reads from it will return its default value.
  mutating func clearDegreeMin() {self._degreeMin = nil}

  /// 0xffff if not valid
  var pm2P5: UInt32 {
    get {return _pm2P5 ?? 0}
    set {_pm2P5 = newValue}
  }
  /// Returns true if `pm2P5` has been explicitly set.
  var hasPm2P5: Bool {return self._pm2P5 != nil}
  /// Clears the value of `pm2P5`. Subsequent reads from it will return its default value.
  mutating func clearPm2P5() {self._pm2P5 = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _dateTime: RtTime? = nil
  fileprivate var _type: WeatherType? = nil
  fileprivate var _desc: WeatherDesc? = nil
  fileprivate var _degreeMax: Int32? = nil
  fileprivate var _degreeMin: Int32? = nil
  fileprivate var _pm2P5: UInt32? = nil
}

struct WeatherGroup: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var hash: UInt32 {
    get {return _hash ?? 0}
    set {_hash = newValue}
  }
  /// Returns true if `hash` has been explicitly set.
  var hasHash: Bool {return self._hash != nil}
  /// Clears the value of `hash`. Subsequent reads from it will return its default value.
  mutating func clearHash() {self._hash = nil}

  var data: [Weather] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _hash: UInt32? = nil
}

struct WeatherNotification: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// required for ADD, CLEAR
  var operation: WeatherOperation {
    get {return _operation ?? .add}
    set {_operation = newValue}
  }
  /// Returns true if `operation` has been explicitly set.
  var hasOperation: Bool {return self._operation != nil}
  /// Clears the value of `operation`. Subsequent reads from it will return its default value.
  mutating func clearOperation() {self._operation = nil}

  /// required for ADD
  var group: WeatherGroup {
    get {return _group ?? WeatherGroup()}
    set {_group = newValue}
  }
  /// Returns true if `group` has been explicitly set.
  var hasGroup: Bool {return self._group != nil}
  /// Clears the value of `group`. Subsequent reads from it will return its default value.
  mutating func clearGroup() {self._group = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _operation: WeatherOperation? = nil
  fileprivate var _group: WeatherGroup? = nil
}

struct WeatherConfirm: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var operation: WeatherOperation {
    get {return _operation ?? .add}
    set {_operation = newValue}
  }
  /// Returns true if `operation` has been explicitly set.
  var hasOperation: Bool {return self._operation != nil}
  /// Clears the value of `operation`. Subsequent reads from it will return its default value.
  mutating func clearOperation() {self._operation = nil}

  var ret: Bool {
    get {return _ret ?? false}
    set {_ret = newValue}
  }
  /// Returns true if `ret` has been explicitly set.
  var hasRet: Bool {return self._ret != nil}
  /// Clears the value of `ret`. Subsequent reads from it will return its default value.
  mutating func clearRet() {self._ret = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _operation: WeatherOperation? = nil
  fileprivate var _ret: Bool? = nil
}

struct WeatherParams: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// max supported size of WeatherGroup:data
  var maxCount: UInt32 {
    get {return _maxCount ?? 0}
    set {_maxCount = newValue}
  }
  /// Returns true if `maxCount` has been explicitly set.
  var hasMaxCount: Bool {return self._maxCount != nil}
  /// Clears the value of `maxCount`. Subsequent reads from it will return its default value.
  mutating func clearMaxCount() {self._maxCount = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _maxCount: UInt32? = nil
}

struct WeatherSubscriber: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var hash: UInt32 {
    get {return _hash ?? 0}
    set {_hash = newValue}
  }
  /// Returns true if `hash` has been explicitly set.
  var hasHash: Bool {return self._hash != nil}
  /// Clears the value of `hash`. Subsequent reads from it will return its default value.
  mutating func clearHash() {self._hash = nil}

  var data: WeatherSubscriber.OneOf_Data? = nil

  var params: WeatherParams {
    get {
      if case .params(let v)? = data {return v}
      return WeatherParams()
    }
    set {data = .params(newValue)}
  }

  var confirm: WeatherConfirm {
    get {
      if case .confirm(let v)? = data {return v}
      return WeatherConfirm()
    }
    set {data = .confirm(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Data: Equatable, Sendable {
    case params(WeatherParams)
    case confirm(WeatherConfirm)

    fileprivate var isInitialized: Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch self {
      case .params: return {
        guard case .params(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .confirm: return {
        guard case .confirm(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      }
    }

  }

  init() {}

  fileprivate var _hash: UInt32? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension WeatherOperation: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ADD"),
    1: .same(proto: "CLEAR"),
  ]
}

extension WeatherDesc: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Sunny"),
    1: .same(proto: "Cloudy"),
    2: .same(proto: "Overcast"),
    3: .same(proto: "LightRain"),
    4: .same(proto: "ModerateRain"),
    5: .same(proto: "HeavyRain"),
    6: .same(proto: "Rainstorm"),
    7: .same(proto: "Snow"),
    8: .same(proto: "Haze"),
    9: .same(proto: "SandStorm"),
    10: .same(proto: "CloudyTurnToFine"),
    11: .same(proto: "Thunderstorm"),
  ]
}

extension WeatherType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "EACH_HOUR"),
    1: .same(proto: "EACH_DAY"),
  ]
}

extension Weather: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Weather"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "date_time"),
    2: .same(proto: "type"),
    3: .same(proto: "desc"),
    4: .standard(proto: "degree_max"),
    5: .standard(proto: "degree_min"),
    6: .same(proto: "pm2p5"),
  ]

  public var isInitialized: Bool {
    if self._dateTime == nil {return false}
    if self._type == nil {return false}
    if self._desc == nil {return false}
    if self._degreeMax == nil {return false}
    if self._degreeMin == nil {return false}
    if self._pm2P5 == nil {return false}
    if let v = self._dateTime, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._dateTime) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self._type) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self._desc) }()
      case 4: try { try decoder.decodeSingularSFixed32Field(value: &self._degreeMax) }()
      case 5: try { try decoder.decodeSingularSFixed32Field(value: &self._degreeMin) }()
      case 6: try { try decoder.decodeSingularFixed32Field(value: &self._pm2P5) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._dateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._type {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._desc {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._degreeMax {
      try visitor.visitSingularSFixed32Field(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._degreeMin {
      try visitor.visitSingularSFixed32Field(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._pm2P5 {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 6)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Weather, rhs: Weather) -> Bool {
    if lhs._dateTime != rhs._dateTime {return false}
    if lhs._type != rhs._type {return false}
    if lhs._desc != rhs._desc {return false}
    if lhs._degreeMax != rhs._degreeMax {return false}
    if lhs._degreeMin != rhs._degreeMin {return false}
    if lhs._pm2P5 != rhs._pm2P5 {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WeatherGroup: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "WeatherGroup"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
    2: .same(proto: "data"),
  ]

  public var isInitialized: Bool {
    if self._hash == nil {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.data) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self._hash) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.data) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._hash {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 1)
    } }()
    if !self.data.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.data, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WeatherGroup, rhs: WeatherGroup) -> Bool {
    if lhs._hash != rhs._hash {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WeatherNotification: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "WeatherNotification"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "operation"),
    2: .same(proto: "group"),
  ]

  public var isInitialized: Bool {
    if self._operation == nil {return false}
    if let v = self._group, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._operation) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._group) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._operation {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._group {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WeatherNotification, rhs: WeatherNotification) -> Bool {
    if lhs._operation != rhs._operation {return false}
    if lhs._group != rhs._group {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WeatherConfirm: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "WeatherConfirm"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "operation"),
    2: .same(proto: "ret"),
  ]

  public var isInitialized: Bool {
    if self._operation == nil {return false}
    if self._ret == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._operation) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self._ret) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._operation {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._ret {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WeatherConfirm, rhs: WeatherConfirm) -> Bool {
    if lhs._operation != rhs._operation {return false}
    if lhs._ret != rhs._ret {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WeatherParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "WeatherParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "max_count"),
  ]

  public var isInitialized: Bool {
    if self._maxCount == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self._maxCount) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._maxCount {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WeatherParams, rhs: WeatherParams) -> Bool {
    if lhs._maxCount != rhs._maxCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension WeatherSubscriber: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "WeatherSubscriber"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
    2: .same(proto: "params"),
    3: .same(proto: "confirm"),
  ]

  public var isInitialized: Bool {
    if self._hash == nil {return false}
    if let v = self.data, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self._hash) }()
      case 2: try {
        var v: WeatherParams?
        var hadOneofValue = false
        if let current = self.data {
          hadOneofValue = true
          if case .params(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.data = .params(v)
        }
      }()
      case 3: try {
        var v: WeatherConfirm?
        var hadOneofValue = false
        if let current = self.data {
          hadOneofValue = true
          if case .confirm(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.data = .confirm(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._hash {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 1)
    } }()
    switch self.data {
    case .params?: try {
      guard case .params(let v)? = self.data else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .confirm?: try {
      guard case .confirm(let v)? = self.data else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: WeatherSubscriber, rhs: WeatherSubscriber) -> Bool {
    if lhs._hash != rhs._hash {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
