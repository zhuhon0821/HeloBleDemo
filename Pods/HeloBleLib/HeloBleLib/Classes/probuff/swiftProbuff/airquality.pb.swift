// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: airquality.proto
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

enum AirQualityOperation: SwiftProtobuf.Enum, Swift.CaseIterable {
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

struct AirQualityData: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var pm2P5: UInt32 {
    get {return _pm2P5 ?? 0}
    set {_pm2P5 = newValue}
  }
  /// Returns true if `pm2P5` has been explicitly set.
  var hasPm2P5: Bool {return self._pm2P5 != nil}
  /// Clears the value of `pm2P5`. Subsequent reads from it will return its default value.
  mutating func clearPm2P5() {self._pm2P5 = nil}

  var pm10: UInt32 {
    get {return _pm10 ?? 0}
    set {_pm10 = newValue}
  }
  /// Returns true if `pm10` has been explicitly set.
  var hasPm10: Bool {return self._pm10 != nil}
  /// Clears the value of `pm10`. Subsequent reads from it will return its default value.
  mutating func clearPm10() {self._pm10 = nil}

  var aqi: UInt32 {
    get {return _aqi ?? 0}
    set {_aqi = newValue}
  }
  /// Returns true if `aqi` has been explicitly set.
  var hasAqi: Bool {return self._aqi != nil}
  /// Clears the value of `aqi`. Subsequent reads from it will return its default value.
  mutating func clearAqi() {self._aqi = nil}

  var o3: UInt32 {
    get {return _o3 ?? 0}
    set {_o3 = newValue}
  }
  /// Returns true if `o3` has been explicitly set.
  var hasO3: Bool {return self._o3 != nil}
  /// Clears the value of `o3`. Subsequent reads from it will return its default value.
  mutating func clearO3() {self._o3 = nil}

  var no2: UInt32 {
    get {return _no2 ?? 0}
    set {_no2 = newValue}
  }
  /// Returns true if `no2` has been explicitly set.
  var hasNo2: Bool {return self._no2 != nil}
  /// Clears the value of `no2`. Subsequent reads from it will return its default value.
  mutating func clearNo2() {self._no2 = nil}

  var so2: UInt32 {
    get {return _so2 ?? 0}
    set {_so2 = newValue}
  }
  /// Returns true if `so2` has been explicitly set.
  var hasSo2: Bool {return self._so2 != nil}
  /// Clears the value of `so2`. Subsequent reads from it will return its default value.
  mutating func clearSo2() {self._so2 = nil}

  var co: UInt32 {
    get {return _co ?? 0}
    set {_co = newValue}
  }
  /// Returns true if `co` has been explicitly set.
  var hasCo: Bool {return self._co != nil}
  /// Clears the value of `co`. Subsequent reads from it will return its default value.
  mutating func clearCo() {self._co = nil}

  var country: UInt32 {
    get {return _country ?? 0}
    set {_country = newValue}
  }
  /// Returns true if `country` has been explicitly set.
  var hasCountry: Bool {return self._country != nil}
  /// Clears the value of `country`. Subsequent reads from it will return its default value.
  mutating func clearCountry() {self._country = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _pm2P5: UInt32? = nil
  fileprivate var _pm10: UInt32? = nil
  fileprivate var _aqi: UInt32? = nil
  fileprivate var _o3: UInt32? = nil
  fileprivate var _no2: UInt32? = nil
  fileprivate var _so2: UInt32? = nil
  fileprivate var _co: UInt32? = nil
  fileprivate var _country: UInt32? = nil
}

struct AirQualityNotification: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// required for ADD, CLEAR
  var operation: AirQualityOperation {
    get {return _operation ?? .add}
    set {_operation = newValue}
  }
  /// Returns true if `operation` has been explicitly set.
  var hasOperation: Bool {return self._operation != nil}
  /// Clears the value of `operation`. Subsequent reads from it will return its default value.
  mutating func clearOperation() {self._operation = nil}

  /// required for ADD
  var airdata: AirQualityData {
    get {return _airdata ?? AirQualityData()}
    set {_airdata = newValue}
  }
  /// Returns true if `airdata` has been explicitly set.
  var hasAirdata: Bool {return self._airdata != nil}
  /// Clears the value of `airdata`. Subsequent reads from it will return its default value.
  mutating func clearAirdata() {self._airdata = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _operation: AirQualityOperation? = nil
  fileprivate var _airdata: AirQualityData? = nil
}

struct AirQualityConfirm: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var operation: AirQualityOperation {
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

  fileprivate var _operation: AirQualityOperation? = nil
  fileprivate var _ret: Bool? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension AirQualityOperation: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ADD"),
    1: .same(proto: "CLEAR"),
  ]
}

extension AirQualityData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AirQualityData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "pm2p5"),
    2: .same(proto: "pm10"),
    3: .same(proto: "aqi"),
    4: .same(proto: "o3"),
    5: .same(proto: "no2"),
    6: .same(proto: "so2"),
    7: .same(proto: "co"),
    8: .same(proto: "country"),
  ]

  public var isInitialized: Bool {
    if self._pm2P5 == nil {return false}
    if self._pm10 == nil {return false}
    if self._aqi == nil {return false}
    if self._o3 == nil {return false}
    if self._no2 == nil {return false}
    if self._so2 == nil {return false}
    if self._co == nil {return false}
    if self._country == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self._pm2P5) }()
      case 2: try { try decoder.decodeSingularFixed32Field(value: &self._pm10) }()
      case 3: try { try decoder.decodeSingularFixed32Field(value: &self._aqi) }()
      case 4: try { try decoder.decodeSingularFixed32Field(value: &self._o3) }()
      case 5: try { try decoder.decodeSingularFixed32Field(value: &self._no2) }()
      case 6: try { try decoder.decodeSingularFixed32Field(value: &self._so2) }()
      case 7: try { try decoder.decodeSingularFixed32Field(value: &self._co) }()
      case 8: try { try decoder.decodeSingularFixed32Field(value: &self._country) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._pm2P5 {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._pm10 {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._aqi {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._o3 {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._no2 {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._so2 {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._co {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._country {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 8)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AirQualityData, rhs: AirQualityData) -> Bool {
    if lhs._pm2P5 != rhs._pm2P5 {return false}
    if lhs._pm10 != rhs._pm10 {return false}
    if lhs._aqi != rhs._aqi {return false}
    if lhs._o3 != rhs._o3 {return false}
    if lhs._no2 != rhs._no2 {return false}
    if lhs._so2 != rhs._so2 {return false}
    if lhs._co != rhs._co {return false}
    if lhs._country != rhs._country {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AirQualityNotification: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AirQualityNotification"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "operation"),
    2: .same(proto: "airdata"),
  ]

  public var isInitialized: Bool {
    if self._operation == nil {return false}
    if let v = self._airdata, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._operation) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._airdata) }()
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
    try { if let v = self._airdata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AirQualityNotification, rhs: AirQualityNotification) -> Bool {
    if lhs._operation != rhs._operation {return false}
    if lhs._airdata != rhs._airdata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AirQualityConfirm: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AirQualityConfirm"
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

  static func ==(lhs: AirQualityConfirm, rhs: AirQualityConfirm) -> Bool {
    if lhs._operation != rhs._operation {return false}
    if lhs._ret != rhs._ret {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
