// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ACCelerometer_data.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
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

struct HisACCelerometer: @unchecked Sendable {
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

  var accDataCount: UInt32 {
    get {return _accDataCount ?? 0}
    set {_accDataCount = newValue}
  }
  /// Returns true if `accDataCount` has been explicitly set.
  var hasAccDataCount: Bool {return self._accDataCount != nil}
  /// Clears the value of `accDataCount`. Subsequent reads from it will return its default value.
  mutating func clearAccDataCount() {self._accDataCount = nil}

  var accX: Data {
    get {return _accX ?? Data()}
    set {_accX = newValue}
  }
  /// Returns true if `accX` has been explicitly set.
  var hasAccX: Bool {return self._accX != nil}
  /// Clears the value of `accX`. Subsequent reads from it will return its default value.
  mutating func clearAccX() {self._accX = nil}

  var accY: Data {
    get {return _accY ?? Data()}
    set {_accY = newValue}
  }
  /// Returns true if `accY` has been explicitly set.
  var hasAccY: Bool {return self._accY != nil}
  /// Clears the value of `accY`. Subsequent reads from it will return its default value.
  mutating func clearAccY() {self._accY = nil}

  var accZ: Data {
    get {return _accZ ?? Data()}
    set {_accZ = newValue}
  }
  /// Returns true if `accZ` has been explicitly set.
  var hasAccZ: Bool {return self._accZ != nil}
  /// Clears the value of `accZ`. Subsequent reads from it will return its default value.
  mutating func clearAccZ() {self._accZ = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _timeStamp: DateTime? = nil
  fileprivate var _accDataCount: UInt32? = nil
  fileprivate var _accX: Data? = nil
  fileprivate var _accY: Data? = nil
  fileprivate var _accZ: Data? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension HisACCelerometer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "HisACCelerometer"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_stamp"),
    2: .standard(proto: "acc_data_count"),
    3: .standard(proto: "acc_x"),
    4: .standard(proto: "acc_y"),
    5: .standard(proto: "acc_z"),
  ]

  public var isInitialized: Bool {
    if self._timeStamp == nil {return false}
    if self._accDataCount == nil {return false}
    if self._accX == nil {return false}
    if self._accY == nil {return false}
    if self._accZ == nil {return false}
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
      case 2: try { try decoder.decodeSingularFixed32Field(value: &self._accDataCount) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self._accX) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self._accY) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self._accZ) }()
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
    try { if let v = self._accDataCount {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._accX {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._accY {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._accZ {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 5)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: HisACCelerometer, rhs: HisACCelerometer) -> Bool {
    if lhs._timeStamp != rhs._timeStamp {return false}
    if lhs._accDataCount != rhs._accDataCount {return false}
    if lhs._accX != rhs._accX {return false}
    if lhs._accY != rhs._accY {return false}
    if lhs._accZ != rhs._accZ {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
