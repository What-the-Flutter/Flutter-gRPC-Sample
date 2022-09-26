import 'package:grpc/grpc.dart';
import 'package:grpc_dart_server/grpc_dart_server.dart';

void main() async {
  final server = Server(
    [PostsService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50001);
  print('✅ Server listening on port ${server.port}...');
}
