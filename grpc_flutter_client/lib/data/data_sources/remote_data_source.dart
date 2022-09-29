import 'dart:async';

import 'package:grpc_flutter_client/data/data_sources/interfaces/i_remote_data_source.dart';
import 'package:grpc_flutter_client/data/data_sources/remote_data_provider.dart';
import 'package:grpc_flutter_client/data/entities/proto/posts.pbgrpc.dart';
import 'package:grpc_flutter_client/data/mappers/comment_mapper.dart';
import 'package:grpc_flutter_client/data/mappers/post_mapper.dart';
import 'package:grpc_flutter_client/data/mappers/user_mapper.dart';
import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';
import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'package:grpc_flutter_client/domain/entities/user/user.dart';

class RemoteDataSource extends IRemoteDataSource {
  final RemoteDataProvider _remoteDataProvider;
  final UserMapper _userMapper;
  final PostMapper _postMapper;
  final CommentMapper _commentMapper;

  RemoteDataSource(
    this._remoteDataProvider,
    this._userMapper,
    this._postMapper,
    this._commentMapper,
  );

  PostsServiceClient get _grpcClient => _remoteDataProvider.grpcClient;

  @override
  Future<void> createComment(Comment comment) async {
    await _grpcClient.createComment(_commentMapper.toProto(comment));
  }

  @override
  Future<void> createPost(Post post) async {
    await _grpcClient.createPost(_postMapper.toProto(post));
  }

  @override
  Future<User> createUser(User user) async {
    final createdUser = await _grpcClient.createUser(_userMapper.toProto(user));
    return _userMapper.fromProto(createdUser);
  }

  @override
  Future<void> deleteComment(int commentId) async {
    await _grpcClient.deleteComment(_commentMapper.toProtoCommentId(commentId));
  }

  @override
  Future<void> deletePost(int postId) async {
    await _grpcClient.deletePost(_postMapper.toProtoPostId(postId));
  }

  @override
  Stream<Post> getAllPosts() async* {
    final responseStream = _grpcClient.getAllPosts(Empty());
    await for (ProtoPost post in responseStream) {
      yield _postMapper.fromProto(post);
    }
  }

  @override
  Stream<Comment> getCommentsByPostId(int postId) async* {
    final responseStream = _grpcClient.getCommentsByPostId(_postMapper.toProtoPostId(postId));
    await for (ProtoComment comment in responseStream) {
      yield _commentMapper.fromProto(comment);
    }
  }

  @override
  void dispose() {
    _remoteDataProvider.dispose();
  }
}
