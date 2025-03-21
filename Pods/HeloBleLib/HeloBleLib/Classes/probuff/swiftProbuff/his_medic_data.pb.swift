// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: his_medic_data.proto
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

struct HisDataMedic: Sendable {
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

  var painLevel: UInt32 {
    get {return _painLevel ?? 0}
    set {_painLevel = newValue}
  }
  /// Returns true if `painLevel` has been explicitly set.
  var hasPainLevel: Bool {return self._painLevel != nil}
  /// Clears the value of `painLevel`. Subsequent reads from it will return its default value.
  mutating func clearPainLevel() {self._painLevel = nil}

  var fatigueLevel: UInt32 {
    get {return _fatigueLevel ?? 0}
    set {_fatigueLevel = newValue}
  }
  /// Returns true if `fatigueLevel` has been explicitly set.
  var hasFatigueLevel: Bool {return self._fatigueLevel != nil}
  /// Clears the value of `fatigueLevel`. Subsequent reads from it will return its default value.
  mutating func clearFatigueLevel() {self._fatigueLevel = nil}

  var stiffLevel: UInt32 {
    get {return _stiffLevel ?? 0}
    set {_stiffLevel = newValue}
  }
  /// Returns true if `stiffLevel` has been explicitly set.
  var hasStiffLevel: Bool {return self._stiffLevel != nil}
  /// Clears the value of `stiffLevel`. Subsequent reads from it will return its default value.
  mutating func clearStiffLevel() {self._stiffLevel = nil}

  var stiffTime: UInt32 {
    get {return _stiffTime ?? 0}
    set {_stiffTime = newValue}
  }
  /// Returns true if `stiffTime` has been explicitly set.
  var hasStiffTime: Bool {return self._stiffTime != nil}
  /// Clears the value of `stiffTime`. Subsequent reads from it will return its default value.
  mutating func clearStiffTime() {self._stiffTime = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _timeStamp: DateTime? = nil
  fileprivate var _painLevel: UInt32? = nil
  fileprivate var _fatigueLevel: UInt32? = nil
  fileprivate var _stiffLevel: UInt32? = nil
  fileprivate var _stiffTime: UInt32? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension HisDataMedic: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "HisDataMedic"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_stamp"),
    2: .standard(proto: "pain_level"),
    3: .standard(proto: "fatigue_level"),
    4: .standard(proto: "stiff_level"),
    5: .standard(proto: "stiff_time"),
  ]

  public var isInitialized: Bool {
    if self._timeStamp == nil {return false}
    if let v = self._timeStamp, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._timeStamp) }()
      case 2: try { try decoder.decodeSingularFixed32Field(value: &self._painLevel) }()
      case 3: try { try decoder.decodeSingularFixed32Field(value: &self._fatigueLevel) }()
      case 4: try { try decoder.decodeSingularFixed32Field(value: &self._stiffLevel) }()
      case 5: try { try decoder.decodeSingularFixed32Field(value: &self._stiffTime) }()
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
    try { if let v = self._painLevel {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._fatigueLevel {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._stiffLevel {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._stiffTime {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 5)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: HisDataMedic, rhs: HisDataMedic) -> Bool {
    if lhs._timeStamp != rhs._timeStamp {return false}
    if lhs._painLevel != rhs._painLevel {return false}
    if lhs._fatigueLevel != rhs._fatigueLevel {return false}
    if lhs._stiffLevel != rhs._stiffLevel {return false}
    if lhs._stiffTime != rhs._stiffTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
