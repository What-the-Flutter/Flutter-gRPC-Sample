import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_post_repository.dart';
import 'package:grpc_flutter_client/domain/interactors/base_interactor.dart';

class PostInteractor extends BaseInteractor {
  final IPostRepository _postRepository;

  PostInteractor(this._postRepository);

  Stream<Post> get allPosts => _postRepository.allPosts;

  Future<void> createPost(Post post) => _postRepository.create(post);

  Future<void> deletePost(int id) => _postRepository.delete(id);
}
