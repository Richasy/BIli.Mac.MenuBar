// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: bilibili/metadata/network/network.proto
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

/// 网络类型
enum Bilibili_Metadata_Network_NetworkType: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// 未知
  case ntUnknown // = 0

  /// WIFI
  case wifi // = 1

  /// 移动网络
  case cellular // = 2

  /// 未连接
  case offline // = 3

  /// 其他网络
  case othernet // = 4

  /// 以太网
  case ethernet // = 5
  case UNRECOGNIZED(Int)

  init() {
    self = .ntUnknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .ntUnknown
    case 1: self = .wifi
    case 2: self = .cellular
    case 3: self = .offline
    case 4: self = .othernet
    case 5: self = .ethernet
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .ntUnknown: return 0
    case .wifi: return 1
    case .cellular: return 2
    case .offline: return 3
    case .othernet: return 4
    case .ethernet: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bilibili_Metadata_Network_NetworkType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Bilibili_Metadata_Network_NetworkType] = [
    .ntUnknown,
    .wifi,
    .cellular,
    .offline,
    .othernet,
    .ethernet,
  ]
}

#endif  // swift(>=4.2)

/// 免流类型
enum Bilibili_Metadata_Network_TFType: SwiftProtobuf.Enum {
  typealias RawValue = Int

  /// 正常计费
  case tfUnknown // = 0

  /// 联通卡
  case uCard // = 1

  /// 联通包
  case uPkg // = 2

  /// 移动卡
  case cCard // = 3

  /// 移动包
  case cPkg // = 4

  /// 电信卡
  case tCard // = 5

  /// 电信包
  case tPkg // = 6
  case UNRECOGNIZED(Int)

  init() {
    self = .tfUnknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .tfUnknown
    case 1: self = .uCard
    case 2: self = .uPkg
    case 3: self = .cCard
    case 4: self = .cPkg
    case 5: self = .tCard
    case 6: self = .tPkg
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .tfUnknown: return 0
    case .uCard: return 1
    case .uPkg: return 2
    case .cCard: return 3
    case .cPkg: return 4
    case .tCard: return 5
    case .tPkg: return 6
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bilibili_Metadata_Network_TFType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Bilibili_Metadata_Network_TFType] = [
    .tfUnknown,
    .uCard,
    .uPkg,
    .cCard,
    .cPkg,
    .tCard,
    .tPkg,
  ]
}

#endif  // swift(>=4.2)

/// 网络类型标识
/// gRPC头部:x-bili-network-bin
struct Bilibili_Metadata_Network_Network {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 网络类型
  var type: Bilibili_Metadata_Network_NetworkType = .ntUnknown

  /// 免流类型
  var tf: Bilibili_Metadata_Network_TFType = .tfUnknown

  /// 运营商
  var oid: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Bilibili_Metadata_Network_NetworkType: @unchecked Sendable {}
extension Bilibili_Metadata_Network_TFType: @unchecked Sendable {}
extension Bilibili_Metadata_Network_Network: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bilibili.metadata.network"

extension Bilibili_Metadata_Network_NetworkType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NT_UNKNOWN"),
    1: .same(proto: "WIFI"),
    2: .same(proto: "CELLULAR"),
    3: .same(proto: "OFFLINE"),
    4: .same(proto: "OTHERNET"),
    5: .same(proto: "ETHERNET"),
  ]
}

extension Bilibili_Metadata_Network_TFType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TF_UNKNOWN"),
    1: .same(proto: "U_CARD"),
    2: .same(proto: "U_PKG"),
    3: .same(proto: "C_CARD"),
    4: .same(proto: "C_PKG"),
    5: .same(proto: "T_CARD"),
    6: .same(proto: "T_PKG"),
  ]
}

extension Bilibili_Metadata_Network_Network: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Network"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "tf"),
    3: .same(proto: "oid"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.tf) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.oid) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .ntUnknown {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if self.tf != .tfUnknown {
      try visitor.visitSingularEnumField(value: self.tf, fieldNumber: 2)
    }
    if !self.oid.isEmpty {
      try visitor.visitSingularStringField(value: self.oid, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Bilibili_Metadata_Network_Network, rhs: Bilibili_Metadata_Network_Network) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.tf != rhs.tf {return false}
    if lhs.oid != rhs.oid {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}