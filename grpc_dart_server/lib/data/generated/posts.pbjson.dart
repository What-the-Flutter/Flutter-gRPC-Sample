///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');
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
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode('CgRQb3N0Eg4KAmlkGAEgASgFUgJpZBIXCgd1c2VyX2lkGAIgASgFUgZ1c2VySWQSLgoEZGF0ZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBGRhdGUSEgoEdGV4dBgEIAEoCVIEdGV4dA==');
@$core.Deprecated('Use postsDescriptor instead')
const Posts$json = const {
  '1': 'Posts',
  '2': const [
    const {'1': 'posts', '3': 1, '4': 3, '5': 11, '6': '.Post', '10': 'posts'},
  ],
};

/// Descriptor for `Posts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postsDescriptor = $convert.base64Decode('CgVQb3N0cxIbCgVwb3N0cxgBIAMoCzIFLlBvc3RSBXBvc3Rz');
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
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'post_id', '3': 5, '4': 1, '5': 9, '10': 'postId'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode('CgdDb21tZW50Eg4KAmlkGAEgASgFUgJpZBIXCgd1c2VyX2lkGAIgASgFUgZ1c2VySWQSLgoEZGF0ZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBGRhdGUSEgoEdGV4dBgEIAEoCVIEdGV4dBIXCgdwb3N0X2lkGAUgASgJUgZwb3N0SWQ=');
@$core.Deprecated('Use commentsDescriptor instead')
const Comments$json = const {
  '1': 'Comments',
  '2': const [
    const {'1': 'comments', '3': 1, '4': 3, '5': 11, '6': '.Comment', '10': 'comments'},
  ],
};

/// Descriptor for `Comments`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentsDescriptor = $convert.base64Decode('CghDb21tZW50cxIkCghjb21tZW50cxgBIAMoCzIILkNvbW1lbnRSCGNvbW1lbnRz');
