///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $4;

import 'general.pbenum.dart' as $1;

class ProtoCommentId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProtoCommentId', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  ProtoCommentId._() : super();
  factory ProtoCommentId({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ProtoCommentId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoCommentId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoCommentId clone() => ProtoCommentId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoCommentId copyWith(void Function(ProtoCommentId) updates) => super.copyWith((message) => updates(message as ProtoCommentId)) as ProtoCommentId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProtoCommentId create() => ProtoCommentId._();
  ProtoCommentId createEmptyInstance() => create();
  static $pb.PbList<ProtoCommentId> createRepeated() => $pb.PbList<ProtoCommentId>();
  @$core.pragma('dart2js:noInline')
  static ProtoCommentId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoCommentId>(create);
  static ProtoCommentId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ProtoComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProtoComment', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOM<$4.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date', subBuilder: $4.Timestamp.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName')
    ..e<$1.ProtoAction>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: $1.ProtoAction.CREATE, valueOf: $1.ProtoAction.valueOf, enumValues: $1.ProtoAction.values)
    ..hasRequiredFields = false
  ;

  ProtoComment._() : super();
  factory ProtoComment({
    $fixnum.Int64? id,
    $fixnum.Int64? userId,
    $4.Timestamp? date,
    $core.String? text,
    $fixnum.Int64? postId,
    $core.String? userName,
    $1.ProtoAction? action,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (date != null) {
      _result.date = date;
    }
    if (text != null) {
      _result.text = text;
    }
    if (postId != null) {
      _result.postId = postId;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    if (action != null) {
      _result.action = action;
    }
    return _result;
  }
  factory ProtoComment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoComment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtoComment clone() => ProtoComment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtoComment copyWith(void Function(ProtoComment) updates) => super.copyWith((message) => updates(message as ProtoComment)) as ProtoComment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProtoComment create() => ProtoComment._();
  ProtoComment createEmptyInstance() => create();
  static $pb.PbList<ProtoComment> createRepeated() => $pb.PbList<ProtoComment>();
  @$core.pragma('dart2js:noInline')
  static ProtoComment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoComment>(create);
  static ProtoComment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $4.Timestamp get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($4.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(4)
  set text($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(4)
  void clearText() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get postId => $_getI64(4);
  @$pb.TagNumber(5)
  set postId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPostId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPostId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userName => $_getSZ(5);
  @$pb.TagNumber(6)
  set userName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserName() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserName() => clearField(6);

  @$pb.TagNumber(7)
  $1.ProtoAction get action => $_getN(6);
  @$pb.TagNumber(7)
  set action($1.ProtoAction v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAction() => $_has(6);
  @$pb.TagNumber(7)
  void clearAction() => clearField(7);
}

