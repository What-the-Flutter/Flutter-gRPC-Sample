# gRPC Demo

Demonstration of the gRPC protocol with a Dart server and a Flutter client.

## Running the Demo
### Start Server

To start the server:

```
dart bin/grpc_dart_server.dart
```

### Start Client

#### Running on a Emulator

First, you must find out the IPv4 address of your computer.  
Open terminal and use  

```
ipconfig
```
After running this command, you'll need to copy the IPv4 address to [grpc_flutter_client/lib/data/utils/constants/connectivity_constants.dart](./grpc_flutter_client/lib/data/utils/constants/connectivity_constants.dart). Port unchanged.  

To start the client:

```
cd grpc_flutter_client && flutter run
```