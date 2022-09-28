import 'package:grpc_flutter_client/data/data_sources/interfaces/i_remote_data_source.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_post_repository.dart';
import 'package:grpc_flutter_client/domain/entities/post/post.dart';

class PostRepository implements IPostRepository {
  final IRemoteDataSource _remoteDataSource;

  PostRepository(this._remoteDataSource);

  @override
  Stream<Post> get allPosts => _remoteDataSource.getAllPosts();

  @override
  Future<void> create(Post post) async {
    await _remoteDataSource.createPost(post);
  }

  @override
  Future<void> delete(int id) async {
    await _remoteDataSource.deletePost(id);
  }
}
