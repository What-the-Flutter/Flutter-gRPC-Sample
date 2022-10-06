///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use protoCommentIdDescriptor instead')
const ProtoCommentId$json = const {
  '1': 'ProtoCommentId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `ProtoCommentId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoCommentIdDescriptor = $convert.base64Decode('Cg5Qcm90b0NvbW1lbnRJZBIOCgJpZBgBIAEoA1ICaWQ=');
@$core.Deprecated('Use protoCommentDescriptor instead')
const ProtoComment$json = const {
  '1': 'ProtoComment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'post_id', '3': 5, '4': 1, '5': 3, '10': 'postId'},
    const {'1': 'user_name', '3': 6, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'action', '3': 7, '4': 1, '5': 14, '6': '.ProtoAction', '10': 'action'},
  ],
};

/// Descriptor for `ProtoComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protoCommentDescriptor = $convert.base64Decode('CgxQcm90b0NvbW1lbnQSDgoCaWQYASABKANSAmlkEhcKB3VzZXJfaWQYAiABKANSBnVzZXJJZBIuCgRkYXRlGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIEZGF0ZRISCgR0ZXh0GAQgASgJUgR0ZXh0EhcKB3Bvc3RfaWQYBSABKANSBnBvc3RJZBIbCgl1c2VyX25hbWUYBiABKAlSCHVzZXJOYW1lEiQKBmFjdGlvbhgHIAEoDjIMLlByb3RvQWN0aW9uUgZhY3Rpb24=');
