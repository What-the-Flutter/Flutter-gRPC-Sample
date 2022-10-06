///
//  Generated code. Do not modify.
//  source: comment.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'comment.pb.dart' as $2;
import 'general.pb.dart' as $1;
import 'post.pb.dart' as $0;
export 'comment.pb.dart';

class CommentServiceClient extends $grpc.Client {
  static final _$createComment = $grpc.ClientMethod<$2.ProtoComment, $1.Empty>(
      '/CommentService/CreateComment',
      ($2.ProtoComment value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getCommentsByPostId =
      $grpc.ClientMethod<$0.ProtoPostId, $2.ProtoComment>(
          '/CommentService/GetCommentsByPostId',
          ($0.ProtoPostId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ProtoComment.fromBuffer(value));
  static final _$deleteComment =
      $grpc.ClientMethod<$2.ProtoCommentId, $1.Empty>(
          '/CommentService/DeleteComment',
          ($2.ProtoCommentId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  CommentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> createComment($2.ProtoComment request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseStream<$2.ProtoComment> getCommentsByPostId(
      $0.ProtoPostId request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getCommentsByPostId, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteComment($2.ProtoCommentId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteComment, request, options: options);
  }
}

abstract class CommentServiceBase extends $grpc.Service {
  $core.String get $name => 'CommentService';

  CommentServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ProtoComment, $1.Empty>(
        'CreateComment',
        createComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ProtoComment.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProtoPostId, $2.ProtoComment>(
        'GetCommentsByPostId',
        getCommentsByPostId_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ProtoPostId.fromBuffer(value),
        ($2.ProtoComment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ProtoCommentId, $1.Empty>(
        'DeleteComment',
        deleteComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ProtoCommentId.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> createComment_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ProtoComment> request) async {
    return createComment(call, await request);
  }

  $async.Stream<$2.ProtoComment> getCommentsByPostId_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoPostId> request) async* {
    yield* getCommentsByPostId(call, await request);
  }

  $async.Future<$1.Empty> deleteComment_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ProtoCommentId> request) async {
    return deleteComment(call, await request);
  }

  $async.Future<$1.Empty> createComment(
      $grpc.ServiceCall call, $2.ProtoComment request);
  $async.Stream<$2.ProtoComment> getCommentsByPostId(
      $grpc.ServiceCall call, $0.ProtoPostId request);
  $async.Future<$1.Empty> deleteComment(
      $grpc.ServiceCall call, $2.ProtoCommentId request);
}
