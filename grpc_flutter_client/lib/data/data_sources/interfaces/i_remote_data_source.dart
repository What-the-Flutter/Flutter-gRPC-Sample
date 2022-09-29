import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';
import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'package:grpc_flutter_client/domain/entities/user/user.dart';

abstract class IRemoteDataSource {
  Future<User> createUser(User user);

  Future<void> createPost(Post post);

  Stream<Post> getAllPosts();

  Future<void> deletePost(int postId);

  Future<void> createComment(Comment comment);

  Stream<Comment> getCommentsByPostId(int postId);

  Future<void> deleteComment(int commentId);

  void dispose();
}
