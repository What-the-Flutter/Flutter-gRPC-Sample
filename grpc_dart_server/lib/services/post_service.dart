import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_dart_server/data/data_sources/database_data_source.dart';
import 'package:grpc_dart_server/entities/proto/comment.pb.dart';
import 'package:grpc_dart_server/entities/proto/general.pb.dart';
import 'package:grpc_dart_server/entities/proto/post.pbgrpc.dart';
import 'package:grpc_dart_server/services/comment_service.dart';
import 'package:protobuf/protobuf.dart';

class PostService extends PostServiceBase {
  final DatabaseDataSource _databaseDataSource = DatabaseDataSource();
  final CommentService _commentService = CommentService();
  final StreamController<ProtoPost> _postsStream = StreamController.broadcast();

  @override
  Future<Empty> createPost(ServiceCall call, ProtoPost request) async {
    final post = _databaseDataSource.createPost(request);
    post.freeze();
    var createdPost = post.rebuild((post) => post.action = ProtoAction.CREATE);
    _postsStream.add(createdPost);
    return Empty();
  }

  @override
  Future<Empty> deletePost(ServiceCall call, ProtoPostId request) async {
    var post = _databaseDataSource.getPost(request.id);
    post.freeze();
    var deletedPost = post.rebuild((post) => post.action = ProtoAction.DELETE);
    _postsStream.sink.add(deletedPost);

    for (var comment in _databaseDataSource.getCommentsByPostId(request.id)) {
      await _commentService.deleteComment(call, ProtoCommentId(id: comment.id));
    }

    _databaseDataSource.deletePost(request.id);
    return Empty();
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
}
