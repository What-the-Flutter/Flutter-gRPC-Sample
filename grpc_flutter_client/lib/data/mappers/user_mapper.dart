import 'package:fixnum/fixnum.dart';
import 'package:grpc_flutter_client/data/entities/proto/user.pb.dart';
import 'package:grpc_flutter_client/domain/entities/user/user.dart';

class UserMapper {
  User fromProto(ProtoUser proto) {
    return User(
      id: proto.id.toInt(),
      name: proto.name,
    );
  }

  ProtoUser toProto(User user) {
    return ProtoUser(
      id: Int64(user.id),
      name: user.name,
    );
  }
}
