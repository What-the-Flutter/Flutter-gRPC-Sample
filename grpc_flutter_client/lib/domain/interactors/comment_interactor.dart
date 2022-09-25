import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_comment_repository.dart';
import 'package:grpc_flutter_client/domain/interactors/base_interactor.dart';

class CommentInteractor extends BaseInteractor {
  final ICommentRepository _commentRepository;

  CommentInteractor(this._commentRepository);

  Stream<Comment> getAllCommentsByPostId(int postId) => _commentRepository.getAllByPostId(postId);

  Future<Comment> createComment(Comment comment) => _commentRepository.create(comment);

  Future<void> deleteComment(int id) => _commentRepository.delete(id);
}
