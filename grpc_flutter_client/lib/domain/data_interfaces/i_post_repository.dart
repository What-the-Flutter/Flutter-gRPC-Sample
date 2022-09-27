import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'entity_repository.dart';

abstract class IPostRepository implements EntityRepository<Post> {
  abstract Stream<Post> allPosts;
  Future<void> create(Post post);
  Future<void> delete(int id);
}