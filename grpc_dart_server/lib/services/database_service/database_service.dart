import 'package:fixnum/fixnum.dart';
import 'package:grpc_dart_server/db/data.dart';
import 'package:grpc_dart_server/entities/proto/posts.pb.dart';

class DatabaseService {
  ProtoComment createComment(ProtoComment comment) {
    comment.id = comment.date.seconds;
    comments.add(comment);
    return comment;
  }

  ProtoPost createPost(ProtoPost post) {
    post.id = post.date.seconds;
    posts.add(post);
    return post;
  }

  ProtoUser createUser(ProtoUser user) {
    user.id = Int64(DateTime.now().millisecondsSinceEpoch);
    users.add(user);
    return user;
  }

  void deleteComment(Int64 commentId) {
    comments.removeWhere((element) => element.id == commentId);
  }

  void deletePost(Int64 postId) {
    posts.removeWhere((element) => element.id == postId);
  }

  List<ProtoPost> getAllPosts() {
    return posts;
  }

  List<ProtoComment> getCommentsByPostId(Int64 postId) {
    return comments.where((element) => element.postId == postId).toList();
  }

  ProtoPost getPost(Int64 postId) {
    return posts.firstWhere((element) => element.id == postId);
  }

  ProtoComment getComment(Int64 commentId) {
    return comments.firstWhere((element) => element.id == commentId);
  }
}
