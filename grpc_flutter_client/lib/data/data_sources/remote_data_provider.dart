import 'package:grpc_flutter_client/data/entities/proto/posts.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class RemoteDataProvider {
  PostsServiceClient? _grpcClient;
  late final ClientChannel? _channel;

  PostsServiceClient get grpcClient {
    if (_grpcClient != null) return _grpcClient!;

    _createChannel();
    return _grpcClient!;
  }

  void _createChannel() {
    _channel = ClientChannel(
      'localhost',
      port: 50001,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _grpcClient = PostsServiceClient(_channel!);
  }

  void dispose() async {
    if (_channel != null) {
      await _channel!.shutdown();
    }
  }
}
