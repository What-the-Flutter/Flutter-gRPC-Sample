import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_dart_server/entities/proto/posts.pbgrpc.dart';
import 'package:grpc_dart_server/services/database_service/database_service.dart';
import 'package:protobuf/protobuf.dart';

class PostsService extends PostsServiceBase {
  final DatabaseService _databaseDataSource = DatabaseService();
  final StreamController<Post> _postsStream = StreamController.broadcast();
  final StreamController<Comment> _commentsStream = StreamController.broadcast();

  @override
  Future<Empty> createComment(ServiceCall call, Comment request) async {
    final comment = _databaseDataSource.createComment(request);
    _commentsStream.sink.add(comment);
    return Empty();
  }

  @override
  Future<Empty> deleteComment(ServiceCall call, CommentId request) async {
    var comment = _databaseDataSource.getComment(request.id);
    var deletedComment = comment.rebuild((comment) => comment.action = Action.DELETE);
    _commentsStream.sink.add(deletedComment);
    _databaseDataSource.deleteComment(request.id);
    return Empty();
  }

  @override
  Future<Empty> deletePost(ServiceCall call, PostId request) async {
    var post = _databaseDataSource.getPost(request.id);
    var deletedPost = post.rebuild((post) => post.action = Action.DELETE);
    _postsStream.sink.add(deletedPost);
    _databaseDataSource.deletePost(request.id);
    return Empty();
  }

  @override
  Future<Empty> createPost(ServiceCall call, Post request) async {
    final post = _databaseDataSource.createPost(request);
    _postsStream.sink.add(post);
    return Empty();
  }

  @override
  Future<User> createUser(ServiceCall call, User request) async {
    return _databaseDataSource.createUser(request);
  }

  @override
  Stream<Post> getAllPosts(ServiceCall call, Empty request) async* {
    for (var post in _databaseDataSource.getAllPosts()) {
      yield post;
    }
    await for (var post in _postsStream.stream) {
      yield post;
    }
  }

  @override
  Stream<Comment> getCommentsByPostId(ServiceCall call, PostId request) async* {
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
