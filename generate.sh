protoc -I protos/ protos/posts.proto --dart_out=grpc:grpc_dart_server/lib/data/generated --dart_out=grpc:grpc_flutter_client/lib/data/generated google/protobuf/timestamp.proto
