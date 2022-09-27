import 'package:fixnum/fixnum.dart';
import 'package:grpc_flutter_client/data/entities/proto/google/protobuf/timestamp.pb.dart';
import 'package:grpc_flutter_client/data/entities/proto/posts.pb.dart';
import 'package:grpc_flutter_client/data/mappers/action_mapper.dart';
import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';

class CommentMapper {
  Comment fromProto(ProtoComment proto) {
    return Comment(
      id: proto.id,
      userId: proto.userId.toInt(),
      postId: proto.postId,
      text: proto.text,
      date: DateTime.fromMillisecondsSinceEpoch(proto.date.seconds.toInt()).toLocal(),
      action: proto.action.fromProto(),
      authorName: proto.userName,
    );
  }

  ProtoComment toProto(Comment comment) {
    return ProtoComment(
      id: comment.id,
      userId: Int64(comment.userId),
      postId: comment.postId,
      text: comment.text,
      date: Timestamp(seconds: Int64(comment.date.millisecondsSinceEpoch)),
      action: comment.action.toProto(),
      userName: comment.authorName,
    );
  }

  ProtoCommentId toProtoCommentId(int commentId) {
    return ProtoCommentId(
      id: commentId,
    );
  }
}
