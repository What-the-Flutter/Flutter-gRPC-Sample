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
  static final _$createUser = $grpc.ClientMethod<$0.User, $0.User>(
      '/PostsService/CreateUser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$createPost = $grpc.ClientMethod<$0.Post, $0.Empty>(
      '/PostsService/CreatePost',
      ($0.Post value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getAllPosts = $grpc.ClientMethod<$0.Empty, $0.Post>(
      '/PostsService/GetAllPosts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Post.fromBuffer(value));
  static final _$deletePost = $grpc.ClientMethod<$0.PostId, $0.Empty>(
      '/PostsService/DeletePost',
      ($0.PostId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$createComment = $grpc.ClientMethod<$0.Comment, $0.Empty>(
      '/PostsService/CreateComment',
      ($0.Comment value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getCommentsByPostId =
      $grpc.ClientMethod<$0.PostId, $0.Comment>(
          '/PostsService/GetCommentsByPostId',
          ($0.PostId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Comment.fromBuffer(value));
  static final _$deleteComment = $grpc.ClientMethod<$0.CommentId, $0.Empty>(
      '/PostsService/DeleteComment',
      ($0.CommentId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  PostsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> createUser($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> createPost($0.Post request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPost, request, options: options);
  }

  $grpc.ResponseStream<$0.Post> getAllPosts($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAllPosts, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deletePost($0.PostId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePost, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> createComment($0.Comment request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseStream<$0.Comment> getCommentsByPostId($0.PostId request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getCommentsByPostId, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteComment($0.CommentId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteComment, request, options: options);
  }
}

abstract class PostsServiceBase extends $grpc.Service {
  $core.String get $name => 'PostsService';

  PostsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Post, $0.Empty>(
        'CreatePost',
        createPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Post.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Post>(
        'GetAllPosts',
        getAllPosts_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Post value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PostId, $0.Empty>(
        'DeletePost',
        deletePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostId.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Comment, $0.Empty>(
        'CreateComment',
        createComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Comment.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PostId, $0.Comment>(
        'GetCommentsByPostId',
        getCommentsByPostId_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.PostId.fromBuffer(value),
        ($0.Comment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommentId, $0.Empty>(
        'DeleteComment',
        deleteComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommentId.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> createUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return createUser(call, await request);
  }

  $async.Future<$0.Empty> createPost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Post> request) async {
    return createPost(call, await request);
  }

  $async.Stream<$0.Post> getAllPosts_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getAllPosts(call, await request);
  }

  $async.Future<$0.Empty> deletePost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PostId> request) async {
    return deletePost(call, await request);
  }

  $async.Future<$0.Empty> createComment_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Comment> request) async {
    return createComment(call, await request);
  }

  $async.Stream<$0.Comment> getCommentsByPostId_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PostId> request) async* {
    yield* getCommentsByPostId(call, await request);
  }

  $async.Future<$0.Empty> deleteComment_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommentId> request) async {
    return deleteComment(call, await request);
  }

  $async.Future<$0.User> createUser($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.Empty> createPost($grpc.ServiceCall call, $0.Post request);
  $async.Stream<$0.Post> getAllPosts($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> deletePost($grpc.ServiceCall call, $0.PostId request);
  $async.Future<$0.Empty> createComment(
      $grpc.ServiceCall call, $0.Comment request);
  $async.Stream<$0.Comment> getCommentsByPostId(
      $grpc.ServiceCall call, $0.PostId request);
  $async.Future<$0.Empty> deleteComment(
      $grpc.ServiceCall call, $0.CommentId request);
}
