import 'package:grpc_flutter_client/data/entities/proto/posts.pb.dart';
import 'package:grpc_flutter_client/domain/entities/action.dart';

extension ActionMapper on ProtoAction {
  Action fromProto() {
    switch (this) {
      case ProtoAction.CREATE:
        return Action.add;
      case ProtoAction.DELETE:
        return Action.delete;
      default:
        return Action.add;
    }
  }
}

extension DomainActionMapper on Action {
  ProtoAction toProto() {
    switch (this) {
      case Action.add:
        return ProtoAction.CREATE;
      case Action.delete:
        return ProtoAction.DELETE;
    }
  }
}
