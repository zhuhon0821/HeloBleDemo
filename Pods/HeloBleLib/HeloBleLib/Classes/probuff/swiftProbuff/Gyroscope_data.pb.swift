// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Gyroscope_data.proto
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

struct HisGyroscope: @unchecked Sendable {
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

  var gyroscopeDataCount: UInt32 {
    get {return _gyroscopeDataCount ?? 0}
    set {_gyroscopeDataCount = newValue}
  }
  /// Returns true if `gyroscopeDataCount` has been explicitly set.
  var hasGyroscopeDataCount: Bool {return self._gyroscopeDataCount != nil}
  /// Clears the value of `gyroscopeDataCount`. Subsequent reads from it will return its default value.
  mutating func clearGyroscopeDataCount() {self._gyroscopeDataCount = nil}

  var gyroscopeX: Data {
    get {return _gyroscopeX ?? Data()}
    set {_gyroscopeX = newValue}
  }
  /// Returns true if `gyroscopeX` has been explicitly set.
  var hasGyroscopeX: Bool {return self._gyroscopeX != nil}
  /// Clears the value of `gyroscopeX`. Subsequent reads from it will return its default value.
  mutating func clearGyroscopeX() {self._gyroscopeX = nil}

  var gyroscopeY: Data {
    get {return _gyroscopeY ?? Data()}
    set {_gyroscopeY = newValue}
  }
  /// Returns true if `gyroscopeY` has been explicitly set.
  var hasGyroscopeY: Bool {return self._gyroscopeY != nil}
  /// Clears the value of `gyroscopeY`. Subsequent reads from it will return its default value.
  mutating func clearGyroscopeY() {self._gyroscopeY = nil}

  var gyroscopeZ: Data {
    get {return _gyroscopeZ ?? Data()}
    set {_gyroscopeZ = newValue}
  }
  /// Returns true if `gyroscopeZ` has been explicitly set.
  var hasGyroscopeZ: Bool {return self._gyroscopeZ != nil}
  /// Clears the value of `gyroscopeZ`. Subsequent reads from it will return its default value.
  mutating func clearGyroscopeZ() {self._gyroscopeZ = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _timeStamp: DateTime? = nil
  fileprivate var _gyroscopeDataCount: UInt32? = nil
  fileprivate var _gyroscopeX: Data? = nil
  fileprivate var _gyroscopeY: Data? = nil
  fileprivate var _gyroscopeZ: Data? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension HisGyroscope: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "HisGyroscope"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_stamp"),
    2: .standard(proto: "Gyroscope_data_count"),
    3: .standard(proto: "Gyroscope_x"),
    4: .standard(proto: "Gyroscope_y"),
    5: .standard(proto: "Gyroscope_z"),
  ]

  public var isInitialized: Bool {
    if self._timeStamp == nil {return false}
    if self._gyroscopeDataCount == nil {return false}
    if self._gyroscopeX == nil {return false}
    if self._gyroscopeY == nil {return false}
    if self._gyroscopeZ == nil {return false}
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
      case 2: try { try decoder.decodeSingularFixed32Field(value: &self._gyroscopeDataCount) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self._gyroscopeX) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self._gyroscopeY) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self._gyroscopeZ) }()
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
    try { if let v = self._gyroscopeDataCount {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._gyroscopeX {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._gyroscopeY {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._gyroscopeZ {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 5)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: HisGyroscope, rhs: HisGyroscope) -> Bool {
    if lhs._timeStamp != rhs._timeStamp {return false}
    if lhs._gyroscopeDataCount != rhs._gyroscopeDataCount {return false}
    if lhs._gyroscopeX != rhs._gyroscopeX {return false}
    if lhs._gyroscopeY != rhs._gyroscopeY {return false}
    if lhs._gyroscopeZ != rhs._gyroscopeZ {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
