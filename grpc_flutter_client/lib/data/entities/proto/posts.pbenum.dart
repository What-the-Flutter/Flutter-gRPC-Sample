///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ProtoAction extends $pb.ProtobufEnum {
  static const ProtoAction CREATE = ProtoAction._(
      0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CREATE');
  static const ProtoAction DELETE = ProtoAction._(
      1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DELETE');

  static const $core.List<ProtoAction> values = <ProtoAction>[
    CREATE,
    DELETE,
  ];

  static final $core.Map<$core.int, ProtoAction> _byValue = $pb.ProtobufEnum.initByValue(values);

  static ProtoAction? valueOf($core.int value) => _byValue[value];

  const ProtoAction._($core.int v, $core.String n) : super(v, n);
}
