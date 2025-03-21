// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: his_bp_Original_data.proto
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

struct HisData_BP_Original: @unchecked Sendable {
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

  var rawData: Data {
    get {return _rawData ?? Data()}
    set {_rawData = newValue}
  }
  /// Returns true if `rawData` has been explicitly set.
  var hasRawData: Bool {return self._rawData != nil}
  /// Clears the value of `rawData`. Subsequent reads from it will return its default value.
  mutating func clearRawData() {self._rawData = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _timeStamp: DateTime? = nil
  fileprivate var _rawData: Data? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension HisData_BP_Original: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "HisData_BP_Original"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_stamp"),
    2: .standard(proto: "raw_data"),
  ]

  public var isInitialized: Bool {
    if self._timeStamp == nil {return false}
    if self._rawData == nil {return false}
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
      case 2: try { try decoder.decodeSingularBytesField(value: &self._rawData) }()
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
    try { if let v = self._rawData {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: HisData_BP_Original, rhs: HisData_BP_Original) -> Bool {
    if lhs._timeStamp != rhs._timeStamp {return false}
    if lhs._rawData != rhs._rawData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
