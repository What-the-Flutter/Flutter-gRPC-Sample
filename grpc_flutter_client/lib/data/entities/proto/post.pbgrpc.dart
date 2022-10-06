///
//  Generated code. Do not modify.
//  source: post.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'post.pb.dart' as $0;
import 'general.pb.dart' as $1;
export 'post.pb.dart';

class PostServiceClient extends $grpc.Client {
  static final _$createPost = $grpc.ClientMethod<$0.ProtoPost, $1.Empty>(
      '/PostService/CreatePost',
      ($0.ProtoPost value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getAllPosts = $grpc.ClientMethod<$1.Empty, $0.ProtoPost>(
      '/PostService/GetAllPosts',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProtoPost.fromBuffer(value));
  static final _$deletePost = $grpc.ClientMethod<$0.ProtoPostId, $1.Empty>(
      '/PostService/DeletePost',
      ($0.ProtoPostId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  PostServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> createPost($0.ProtoPost request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPost, request, options: options);
  }

  $grpc.ResponseStream<$0.ProtoPost> getAllPosts($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAllPosts, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deletePost($0.ProtoPostId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePost, request, options: options);
  }
}

abstract class PostServiceBase extends $grpc.Service {
  $core.String get $name => 'PostService';

  PostServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProtoPost, $1.Empty>(
        'CreatePost',
        createPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProtoPost.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ProtoPost>(
        'GetAllPosts',
        getAllPosts_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ProtoPost value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProtoPostId, $1.Empty>(
        'DeletePost',
        deletePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProtoPostId.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> createPost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoPost> request) async {
    return createPost(call, await request);
  }

  $async.Stream<$0.ProtoPost> getAllPosts_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* getAllPosts(call, await request);
  }

  $async.Future<$1.Empty> deletePost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ProtoPostId> request) async {
    return deletePost(call, await request);
  }

  $async.Future<$1.Empty> createPost(
      $grpc.ServiceCall call, $0.ProtoPost request);
  $async.Stream<$0.ProtoPost> getAllPosts(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> deletePost(
      $grpc.ServiceCall call, $0.ProtoPostId request);
}
