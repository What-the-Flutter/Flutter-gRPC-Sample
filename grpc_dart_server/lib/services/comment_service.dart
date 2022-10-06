import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_dart_server/data/data_sources/database_data_source.dart';
import 'package:grpc_dart_server/entities/proto/comment.pbgrpc.dart';
import 'package:grpc_dart_server/entities/proto/general.pb.dart';
import 'package:grpc_dart_server/entities/proto/post.pb.dart';
import 'package:protobuf/protobuf.dart';

class CommentService extends CommentServiceBase {
  final DatabaseDataSource _databaseDataSource = DatabaseDataSource();
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
