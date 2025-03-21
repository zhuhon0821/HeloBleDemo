// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: his_temperature_data.proto
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

struct SensorTemp: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var eviBody: UInt32 {
    get {return _eviBody ?? 0}
    set {_eviBody = newValue}
  }
  /// Returns true if `eviBody` has been explicitly set.
  var hasEviBody: Bool {return self._eviBody != nil}
  /// Clears the value of `eviBody`. Subsequent reads from it will return its default value.
  mutating func clearEviBody() {self._eviBody = nil}

  var estiArm: UInt32 {
    get {return _estiArm ?? 0}
    set {_estiArm = newValue}
  }
  /// Returns true if `estiArm` has been explicitly set.
  var hasEstiArm: Bool {return self._estiArm != nil}
  /// Clears the value of `estiArm`. Subsequent reads from it will return its default value.
  mutating func clearEstiArm() {self._estiArm = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _eviBody: UInt32? = nil
  fileprivate var _estiArm: UInt32? = nil
}

struct HisDataTemperature: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var timeStamp: DateTime {
    get {return _timeStamp ?? DateTime()}
    set {_timeStamp = newValue}
  }
  /// Returns true if `timeStamp` has been explicitly set.
  var hasTimeStamp: Bool {return self._timeStamp != nil}
  /// Clears the value of `timeStamp`. Subsequent reads from it will return its default value.
  mutating func clearTimeStamp() {self._timeStamp = nil}

  var temperature: SensorTemp {
    get {return _temperature ?? SensorTemp()}
    set {_temperature = newValue}
  }
  /// Returns true if `temperature` has been explicitly set.
  var hasTemperature: Bool {return self._temperature != nil}
  /// Clears the value of `temperature`. Subsequent reads from it will return its default value.
  mutating func clearTemperature() {self._temperature = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _timeStamp: DateTime? = nil
  fileprivate var _temperature: SensorTemp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension SensorTemp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "SensorTemp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "evi_body"),
    2: .standard(proto: "esti_arm"),
  ]

  public var isInitialized: Bool {
    if self._eviBody == nil {return false}
    if self._estiArm == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self._eviBody) }()
      case 2: try { try decoder.decodeSingularFixed32Field(value: &self._estiArm) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._eviBody {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._estiArm {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SensorTemp, rhs: SensorTemp) -> Bool {
    if lhs._eviBody != rhs._eviBody {return false}
    if lhs._estiArm != rhs._estiArm {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension HisDataTemperature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "HisDataTemperature"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_stamp"),
    2: .same(proto: "temperature"),
  ]

  public var isInitialized: Bool {
    if self._timeStamp == nil {return false}
    if self._temperature == nil {return false}
    if let v = self._timeStamp, !v.isInitialized {return false}
    if let v = self._temperature, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._timeStamp) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._temperature) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._timeStamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._temperature {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: HisDataTemperature, rhs: HisDataTemperature) -> Bool {
    if lhs._timeStamp != rhs._timeStamp {return false}
    if lhs._temperature != rhs._temperature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
