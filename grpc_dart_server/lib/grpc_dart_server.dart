import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_dart_server/entities/proto/posts.pbgrpc.dart';
import 'package:grpc_dart_server/services/database_service/database_service.dart';
import 'package:protobuf/protobuf.dart';

class PostsService extends PostsServiceBase {
  final DatabaseService _databaseDataSource = DatabaseService();
  final StreamController<ProtoPost> _postsStream = StreamController.broadcast();
  final StreamController<ProtoComment> _commentsStream = StreamController.broadcast();

  @override
  Future<Empty> createComment(ServiceCall call, ProtoComment request) async {
    final comment = _databaseDataSource.createComment(request);
    comment.freeze();
    var createdComment = comment.rebuild((comment) => comment.action = ProtoAction.CREATE);
    _commentsStream.sink.add(createdComment);
    return Empty();
  }

  @override
  Future<Empty> deleteComment(ServiceCall call, ProtoCommentId request) async {
    var comment = _databaseDataSource.getComment(request.id);
    comment.freeze();
    var deletedComment = comment.rebuild((comment) => comment.action = ProtoAction.DELETE);
    _commentsStream.sink.add(deletedComment);
    _databaseDataSource.deleteComment(request.id);
    return Empty();
  }

  @override
  Future<Empty> deletePost(ServiceCall call, ProtoPostId request) async {
    var post = _databaseDataSource.getPost(request.id);
    post.freeze();
    var deletedPost = post.rebuild((post) => post.action = ProtoAction.DELETE);
    _postsStream.sink.add(deletedPost);

    for (var comment in _databaseDataSource.getCommentsByPostId(request.id)) {
      await deleteComment(call, ProtoCommentId(id: comment.id));
    }

    _databaseDataSource.deletePost(request.id);
    return Empty();
  }

  @override
  Future<Empty> createPost(ServiceCall call, ProtoPost request) async {
    final post = _databaseDataSource.createPost(request);
    post.freeze();
    var createdPost = post.rebuild((post) => post.action = ProtoAction.CREATE);
    _postsStream.add(createdPost);
    return Empty();
  }

  @override
  Future<ProtoUser> createUser(ServiceCall call, ProtoUser request) async {
    return _databaseDataSource.createUser(request);
  }

  @override
  Stream<ProtoPost> getAllPosts(ServiceCall call, Empty request) async* {
    for (var post in _databaseDataSource.getAllPosts()) {
      yield post;
    }
    await for (var post in _postsStream.stream) {
      yield post;
    }
  }

  @override
  Stream<ProtoComment> getCommentsByPostId(ServiceCall call, ProtoPostId request) async* {
    for (var comment in _databaseDataSource.getCommentsByPostId(request.id)) {
      yield comment;
    }
    await for (var comment in _commentsStream.stream) {
      if (comment.postId == request.id) {
        yield comment;
      }
    }
  }
}
