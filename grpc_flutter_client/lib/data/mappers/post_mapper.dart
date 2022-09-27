import 'package:fixnum/fixnum.dart';
import 'package:grpc_flutter_client/data/entities/proto/google/protobuf/timestamp.pb.dart';
import 'package:grpc_flutter_client/data/entities/proto/posts.pb.dart';
import 'package:grpc_flutter_client/data/mappers/action_mapper.dart';
import 'package:grpc_flutter_client/domain/entities/post/post.dart';

class PostMapper {
  Post fromProto(ProtoPost proto) {
    return Post(
      id: proto.id,
      userId: proto.userId.toInt(),
      text: proto.text,
      date: DateTime.fromMillisecondsSinceEpoch(proto.date.seconds.toInt()).toLocal(),
      action: proto.action.fromProto(),
      authorName: proto.userName,
    );
  }

  ProtoPost toProto(Post post) {
    return ProtoPost(
      id: post.id,
      userId: Int64(post.userId),
      text: post.text,
      date: Timestamp(seconds: Int64(post.date.millisecondsSinceEpoch)),
      action: post.action.toProto(),
      userName: post.authorName,
    );
  }

  ProtoPostId toProtoPostId(int postId) {
    return ProtoPostId(
      id: postId,
    );
  }
}
