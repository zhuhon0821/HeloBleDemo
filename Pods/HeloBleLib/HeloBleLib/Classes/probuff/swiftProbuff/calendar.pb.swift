// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: calendar.proto
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

enum CalendarOperation: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case add // = 0
  case remove // = 1
  case clear // = 2

  init() {
    self = .add
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .add
    case 1: self = .remove
    case 2: self = .clear
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .add: return 0
    case .remove: return 1
    case .clear: return 2
    }
  }

}

struct Calendar: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// required for ADD, REMOVE,
  var time: RtTime {
    get {return _time ?? RtTime()}
    set {_time = newValue}
  }
  /// Returns true if `time` has been explicitly set.
  var hasTime: Bool {return self._time != nil}
  /// Clears the value of `time`. Subsequent reads from it will return its default value.
  mutating func clearTime() {self._time = nil}

  /// required for ADD
  var text: String {
    get {return _text ?? String()}
    set {_text = newValue}
  }
  /// Returns true if `text` has been explicitly set.
  var hasText: Bool {return self._text != nil}
  /// Clears the value of `text`. Subsequent reads from it will return its default value.
  mutating func clearText() {self._text = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _time: RtTime? = nil
  fileprivate var _text: String? = nil
}

struct CalendarConfirm: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var operation: CalendarOperation {
    get {return _operation ?? .add}
    set {_operation = newValue}
  }
  /// Returns true if `operation` has been explicitly set.
  var hasOperation: Bool {return self._operation != nil}
  /// Clears the value of `operation`. Subsequent reads from it will return its default value.
  mutating func clearOperation() {self._operation = nil}

  /// 1:success
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

  fileprivate var _operation: CalendarOperation? = nil
  fileprivate var _ret: Bool? = nil
}

struct CalendarGroup: Sendable {
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

  var calendar: [Calendar] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _hash: UInt32? = nil
}

struct CalendarNotification: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var operation: CalendarOperation {
    get {return _operation ?? .add}
    set {_operation = newValue}
  }
  /// Returns true if `operation` has been explicitly set.
  var hasOperation: Bool {return self._operation != nil}
  /// Clears the value of `operation`. Subsequent reads from it will return its default value.
  mutating func clearOperation() {self._operation = nil}

  /// required for ADD, REMOVE
  var group: CalendarGroup {
    get {return _group ?? CalendarGroup()}
    set {_group = newValue}
  }
  /// Returns true if `group` has been explicitly set.
  var hasGroup: Bool {return self._group != nil}
  /// Clears the value of `group`. Subsequent reads from it will return its default value.
  mutating func clearGroup() {self._group = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _operation: CalendarOperation? = nil
  fileprivate var _group: CalendarGroup? = nil
}

struct CalendarSubscriber: Sendable {
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

  /// max supported calendar count
  var maxCount: UInt32 {
    get {return _maxCount ?? 0}
    set {_maxCount = newValue}
  }
  /// Returns true if `maxCount` has been explicitly set.
  var hasMaxCount: Bool {return self._maxCount != nil}
  /// Clears the value of `maxCount`. Subsequent reads from it will return its default value.
  mutating func clearMaxCount() {self._maxCount = nil}

  /// confirm of operation
  var confirm: CalendarConfirm {
    get {return _confirm ?? CalendarConfirm()}
    set {_confirm = newValue}
  }
  /// Returns true if `confirm` has been explicitly set.
  var hasConfirm: Bool {return self._confirm != nil}
  /// Clears the value of `confirm`. Subsequent reads from it will return its default value.
  mutating func clearConfirm() {self._confirm = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _hash: UInt32? = nil
  fileprivate var _maxCount: UInt32? = nil
  fileprivate var _confirm: CalendarConfirm? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension CalendarOperation: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ADD"),
    1: .same(proto: "REMOVE"),
    2: .same(proto: "CLEAR"),
  ]
}

extension Calendar: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Calendar"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "time"),
    2: .same(proto: "text"),
  ]

  public var isInitialized: Bool {
    if self._time == nil {return false}
    if let v = self._time, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._time) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._text) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._time {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._text {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Calendar, rhs: Calendar) -> Bool {
    if lhs._time != rhs._time {return false}
    if lhs._text != rhs._text {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CalendarConfirm: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "CalendarConfirm"
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

  static func ==(lhs: CalendarConfirm, rhs: CalendarConfirm) -> Bool {
    if lhs._operation != rhs._operation {return false}
    if lhs._ret != rhs._ret {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CalendarGroup: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "CalendarGroup"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
    2: .same(proto: "calendar"),
  ]

  public var isInitialized: Bool {
    if self._hash == nil {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.calendar) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self._hash) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.calendar) }()
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
    if !self.calendar.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.calendar, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CalendarGroup, rhs: CalendarGroup) -> Bool {
    if lhs._hash != rhs._hash {return false}
    if lhs.calendar != rhs.calendar {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CalendarNotification: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "CalendarNotification"
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

  static func ==(lhs: CalendarNotification, rhs: CalendarNotification) -> Bool {
    if lhs._operation != rhs._operation {return false}
    if lhs._group != rhs._group {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CalendarSubscriber: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "CalendarSubscriber"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hash"),
    2: .standard(proto: "max_count"),
    3: .same(proto: "confirm"),
  ]

  public var isInitialized: Bool {
    if self._hash == nil {return false}
    if self._maxCount == nil {return false}
    if let v = self._confirm, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self._hash) }()
      case 2: try { try decoder.decodeSingularFixed32Field(value: &self._maxCount) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._confirm) }()
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
    try { if let v = self._maxCount {
      try visitor.visitSingularFixed32Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._confirm {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CalendarSubscriber, rhs: CalendarSubscriber) -> Bool {
    if lhs._hash != rhs._hash {return false}
    if lhs._maxCount != rhs._maxCount {return false}
    if lhs._confirm != rhs._confirm {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
