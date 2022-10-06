import 'package:grpc/grpc.dart';
import 'package:grpc_flutter_client/data/entities/proto/comment.pbgrpc.dart';
import 'package:grpc_flutter_client/data/entities/proto/post.pbgrpc.dart';
import 'package:grpc_flutter_client/data/entities/proto/user.pbgrpc.dart';
import 'package:grpc_flutter_client/data/utils/constants/connectivity_constants.dart';

class RemoteDataProvider {
  UserServiceClient? _userServiceClient;
  PostServiceClient? _postServiceClient;
  CommentServiceClient? _commentServiceClient;
  late final ClientChannel _channel;

  RemoteDataProvider() {
    _createChannel();
  }

  UserServiceClient get userServiceClient {
    if (_userServiceClient != null) return _userServiceClient!;
    _userServiceClient = UserServiceClient(_channel);
    return _userServiceClient!;
  }

  PostServiceClient get postServiceClient {
    if (_postServiceClient != null) return _postServiceClient!;
    _postServiceClient = PostServiceClient(_channel);
    return _postServiceClient!;
  }

  CommentServiceClient get commentServiceClient {
    if (_commentServiceClient != null) return _commentServiceClient!;
    _commentServiceClient = CommentServiceClient(_channel);
    return _commentServiceClient!;
  }

  void _createChannel() {
    _channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }

  void dispose() async {
    await _channel.shutdown();
  }
}
