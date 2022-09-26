protoc -I protos/ protos/posts.proto --dart_out=grpc:grpc_dart_server/lib/entities/proto --dart_out=grpc:grpc_flutter_client/lib/data/entities/proto google/protobuf/timestamp.proto
