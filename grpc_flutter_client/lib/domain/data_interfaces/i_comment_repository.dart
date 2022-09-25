import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';
import 'entity_repository.dart';

abstract class ICommentRepository implements EntityRepository<Comment> {
  Stream<Comment> getAllByPostId(int postId);
  Future<void> delete(int id);
}
