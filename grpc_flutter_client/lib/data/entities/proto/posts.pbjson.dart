///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use actionDescriptor instead')
const Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'CREATE', '2': 0},
    const {'1': 'DELETE', '2': 1},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode('CgZBY3Rpb24SCgoGQ1JFQVRFEAASCgoGREVMRVRFEAE=');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');
@$core.Deprecated('Use postIdDescriptor instead')
const PostId$json = const {
  '1': 'PostId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `PostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postIdDescriptor = $convert.base64Decode('CgZQb3N0SWQSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use postDescriptor instead')
const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'action', '3': 5, '4': 1, '5': 14, '6': '.Action', '10': 'action'},
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode('CgRQb3N0Eg4KAmlkGAEgASgFUgJpZBIXCgd1c2VyX2lkGAIgASgDUgZ1c2VySWQSLgoEZGF0ZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBGRhdGUSEgoEdGV4dBgEIAEoCVIEdGV4dBIfCgZhY3Rpb24YBSABKA4yBy5BY3Rpb25SBmFjdGlvbg==');
@$core.Deprecated('Use commentIdDescriptor instead')
const CommentId$json = const {
  '1': 'CommentId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `CommentId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentIdDescriptor = $convert.base64Decode('CglDb21tZW50SWQSDgoCaWQYASABKAVSAmlk');
@$core.Deprecated('Use commentDescriptor instead')
const Comment$json = const {
  '1': 'Comment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'post_id', '3': 5, '4': 1, '5': 5, '10': 'postId'},
    const {'1': 'action', '3': 6, '4': 1, '5': 14, '6': '.Action', '10': 'action'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode('CgdDb21tZW50Eg4KAmlkGAEgASgFUgJpZBIXCgd1c2VyX2lkGAIgASgDUgZ1c2VySWQSLgoEZGF0ZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBGRhdGUSEgoEdGV4dBgEIAEoCVIEdGV4dBIXCgdwb3N0X2lkGAUgASgFUgZwb3N0SWQSHwoGYWN0aW9uGAYgASgOMgcuQWN0aW9uUgZhY3Rpb24=');
