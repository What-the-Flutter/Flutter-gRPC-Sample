import 'package:fixnum/fixnum.dart';
import 'package:grpc_dart_server/db/data.dart';
import 'package:grpc_dart_server/entities/proto/posts.pb.dart';

class DatabaseService {
  ProtoComment createComment(ProtoComment comment) {
    comment.id = comment.date.nanos;
    comments.add(comment);
    return comment;
  }

  ProtoPost createPost(ProtoPost post) {
    post.id = post.date.nanos;
    posts.add(post);
    return post;
  }

  ProtoUser createUser(ProtoUser user) {
    user.id = Int64(DateTime.now().millisecondsSinceEpoch);
    users.add(user);
    return user;
  }

  void deleteComment(int commentId) {
    comments.removeWhere((element) => element.id == commentId);
  }

  void deletePost(int postId) {
    posts.removeWhere((element) => element.id == postId);
  }

  List<ProtoPost> getAllPosts() {
    return posts;
  }

  List<ProtoComment> getCommentsByPostId(int postId) {
    return comments.where((element) => element.postId == postId).toList();
  }

  ProtoPost getPost(int postId) {
    return posts.firstWhere((element) => element.id == postId);
  }

  ProtoComment getComment(int commentId) {
    return comments.firstWhere((element) => element.id == commentId);
  }
}
