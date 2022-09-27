import 'package:grpc_flutter_client/data/data_sources/interfaces/i_remote_data_source.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_comment_repository.dart';
import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';

class CommentRepository implements ICommentRepository {
  final IRemoteDataSource _remoteDataSource;

  CommentRepository(this._remoteDataSource);

  @override
  Future<void> create(Comment comment) async {
    await _remoteDataSource.createComment(comment);
  }

  @override
  Future<void> delete(int id) async {
    await _remoteDataSource.deleteComment(id);
  }

  @override
  Stream<Comment> getAllByPostId(int postId) {
    return _remoteDataSource.getCommentsByPostId(postId);
  }
}
