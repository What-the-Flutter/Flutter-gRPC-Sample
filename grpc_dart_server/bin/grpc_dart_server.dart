import 'package:grpc/grpc.dart';
import 'package:grpc_dart_server/services/comment_service.dart';
import 'package:grpc_dart_server/services/post_service.dart';
import 'package:grpc_dart_server/services/user_service.dart';

void main() async {
  final server = Server(
    [
      UserService(),
      PostService(),
      CommentService(),
    ],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50001);
  print('✅ Server listening on port ${server.port}...');
}
