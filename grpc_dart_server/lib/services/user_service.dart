import 'package:grpc/grpc.dart';
import 'package:grpc_dart_server/data/data_sources/database_data_source.dart';
import 'package:grpc_dart_server/entities/proto/user.pbgrpc.dart';

class UserService extends UserServiceBase {
  final DatabaseDataSource _databaseDataSource = DatabaseDataSource();

  @override
  Future<ProtoUser> createUser(ServiceCall call, ProtoUser request) async {
    return _databaseDataSource.createUser(request);
  }
}
