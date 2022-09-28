///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'posts.pb.dart' as $0;
export 'posts.pb.dart';

class PostsServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$0.ProtoUser, $0.ProtoUser>(
      '/PostsService/CreateUser',
      ($0.ProtoUser value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProtoUser.fromBuffer(value));
  static final _$createPost = $grpc.ClientMethod<$0.ProtoPost, $0.Empty>(
      '/PostsService/CreatePost',
      ($0.ProtoPost value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getAllPosts = $grpc.ClientMethod<$0.Empty, $0.ProtoPost>(
      '/PostsService/GetAllPosts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProtoPost.fromBuffer(value));
  static final _$deletePost = $grpc.ClientMethod<$0.ProtoPostId, $0.Empty>(
      '/PostsService/DeletePost',
      ($0.ProtoPostId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$createComment = $grpc.ClientMethod<$0.ProtoComment, $0.Empty>(
      '/PostsService/CreateComment',
      ($0.ProtoComment value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getCommentsByPostId =
      $grpc.ClientMethod<$0.ProtoPostId, $0.ProtoComment>(
          '/PostsService/GetCommentsByPostId',
          ($0.ProtoPostId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ProtoComment.fromBuffer(value));
  static final _$deleteComment =
      $grpc.ClientMethod<$0.ProtoCommentId, $0.Empty>(
          '/PostsService/DeleteComment',
          ($0.ProtoCommentId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  PostsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ProtoUser> createUser($0.ProtoUser request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> createPost($0.ProtoPost request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPost, request, options: options);
  }

  $grpc.ResponseStream<$0.ProtoPost> getAllPosts($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAllPosts, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deletePost($0.ProtoPostId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePost, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> createComment($0.ProtoComment request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseStream<$0.ProtoComment> getCommentsByPostId(
      $0.ProtoPostId request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getCommentsByPostId, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteComment($0.ProtoCommentId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteComment, request, options: options);
  }
}

abstract class PostsServiceBase extends $grpc.Service {
  $core.String get $name => 'PostsService';

  PostsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProtoUser, $0.ProtoUser>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProtoUser.fromBuffer(value),
        ($0.ProtoUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProtoPost, $0.Empty>(
        'CreatePost',
        createPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProtoPost.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ProtoPost>(
        'GetAllPosts',
        getAllPosts_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ProtoPost value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProtoPostId, $0.Empty>(
        'DeletePost',
        deletePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProtoPostId.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProtoComment, $0.Empty>(
        'CreateComment',
        createComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProtoComment.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProtoPostId, $0.ProtoComment>(
        'GetCommentsByPostId',
        getCommentsByPostId_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ProtoPostId.fromBuffer(value),
        ($0.ProtoComment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProtoCommentId, $0.Empty>(
        'DeleteComment',
        deleteComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProtoCommentId.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ProtoUser> createUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoUser> request) async {
    return createUser(call, await request);
  }

  $async.Future<$0.Empty> createPost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoPost> request) async {
    return createPost(call, await request);
  }

  $async.Stream<$0.ProtoPost> getAllPosts_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getAllPosts(call, await request);
  }

  $async.Future<$0.Empty> deletePost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoPostId> request) async {
    return deletePost(call, await request);
  }

  $async.Future<$0.Empty> createComment_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoComment> request) async {
    return createComment(call, await request);
  }

  $async.Stream<$0.ProtoComment> getCommentsByPostId_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoPostId> request) async* {
    yield* getCommentsByPostId(call, await request);
  }

  $async.Future<$0.Empty> deleteComment_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoCommentId> request) async {
    return deleteComment(call, await request);
  }

  $async.Future<$0.ProtoUser> createUser(
      $grpc.ServiceCall call, $0.ProtoUser request);
  $async.Future<$0.Empty> createPost(
      $grpc.ServiceCall call, $0.ProtoPost request);
  $async.Stream<$0.ProtoPost> getAllPosts(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> deletePost(
      $grpc.ServiceCall call, $0.ProtoPostId request);
  $async.Future<$0.Empty> createComment(
      $grpc.ServiceCall call, $0.ProtoComment request);
  $async.Stream<$0.ProtoComment> getCommentsByPostId(
      $grpc.ServiceCall call, $0.ProtoPostId request);
  $async.Future<$0.Empty> deleteComment(
      $grpc.ServiceCall call, $0.ProtoCommentId request);
}
