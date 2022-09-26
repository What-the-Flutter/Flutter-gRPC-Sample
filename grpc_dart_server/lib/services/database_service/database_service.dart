import 'package:fixnum/fixnum.dart';
import 'package:grpc_dart_server/db/data.dart';
import 'package:grpc_dart_server/entities/proto/posts.pb.dart';

class DatabaseService {
  Comment createComment(Comment comment) {
    comment.id = comment.date.nanos;
    comments.add(comment);
    return comment;
  }

  Post createPost(Post post) {
    post.id = post.date.nanos;
    posts.add(post);
    return post;
  }

  User createUser(User user) {
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

  List<Post> getAllPosts() {
    return posts;
  }

  List<Comment> getCommentsByPostId(int postId) {
    return comments.where((element) => element.postId == postId).toList();
  }

  Post getPost(int postId) {
    return posts.firstWhere((element) => element.id == postId);
  }

  Comment getComment(int commentId) {
    return comments.firstWhere((element) => element.id == commentId);
  }
}
