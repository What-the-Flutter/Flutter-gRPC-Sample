import 'package:fixnum/fixnum.dart';
import 'package:grpc_flutter_client/data/entities/proto/comment.pb.dart';
import 'package:grpc_flutter_client/data/entities/proto/google/protobuf/timestamp.pb.dart';
import 'package:grpc_flutter_client/data/mappers/action_mapper.dart';
import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';

class CommentMapper {
  Comment fromProto(ProtoComment proto) {
    return Comment(
      id: proto.id.toInt(),
      userId: proto.userId.toInt(),
      postId: proto.postId.toInt(),
      text: proto.text,
      date: DateTime.fromMillisecondsSinceEpoch(proto.date.seconds.toInt()).toLocal(),
      action: proto.action.fromProto(),
      authorName: proto.userName,
    );
  }

  ProtoComment toProto(Comment comment) {
    return ProtoComment(
      id: Int64(comment.id),
      userId: Int64(comment.userId),
      postId: Int64(comment.postId),
      text: comment.text,
      date: Timestamp(seconds: Int64(comment.date.millisecondsSinceEpoch)),
      action: comment.action.toProto(),
      userName: comment.authorName,
    );
  }

  ProtoCommentId toProtoCommentId(int commentId) {
    return ProtoCommentId(
      id: Int64(commentId),
    );
  }
}
