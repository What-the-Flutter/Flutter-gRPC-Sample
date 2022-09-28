import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'entity_repository.dart';

abstract class IPostRepository implements EntityRepository<Post> {
  Stream<Post> get allPosts;
  Future<void> create(Post post);
  Future<void> delete(int id);
}
