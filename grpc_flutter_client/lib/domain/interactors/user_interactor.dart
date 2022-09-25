import 'package:grpc_flutter_client/domain/entities/user/user.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_user_repository.dart';
import 'package:grpc_flutter_client/domain/interactors/base_interactor.dart';

class UserInteractor extends BaseInteractor {
  final IUserRepository _userRepository;

  UserInteractor(this._userRepository);

  Future<User> createUser(User user) => _userRepository.create(user);
}
