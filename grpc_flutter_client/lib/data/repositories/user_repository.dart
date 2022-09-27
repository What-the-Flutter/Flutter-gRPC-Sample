import 'package:grpc_flutter_client/data/data_sources/interfaces/i_remote_data_source.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_user_repository.dart';
import 'package:grpc_flutter_client/domain/entities/user/user.dart';

class UserRepository implements IUserRepository {
  final IRemoteDataSource _remoteDataSource;

  UserRepository(this._remoteDataSource);

  @override
  Future<User> create(User user) async {
    return await _remoteDataSource.createUser(user);
  }
}
