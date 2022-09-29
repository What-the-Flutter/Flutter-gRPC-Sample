import 'package:grpc_flutter_client/data/entities/proto/posts.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_flutter_client/data/utils/constants/connectivity_constants.dart';

class RemoteDataProvider {
  PostsServiceClient? _grpcClient;
  late final ClientChannel _channel;

  PostsServiceClient get grpcClient {
    if (_grpcClient != null) return _grpcClient!;

    _createChannel();
    return _grpcClient!;
  }

  void _createChannel() {
    _channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _grpcClient = PostsServiceClient(_channel);
  }

  void dispose() async {
    await _channel.shutdown();
  }
}
