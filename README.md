# gRPC Demo

Demonstration of the gRPC protocol with a Dart server and a Flutter client.

## Why gRPC?

[gRPC](https://grpc.io) is a cross-platform open source high performance Remote Procedure Call (RPC) framework which sends structured binary data over [HTTP/2](https://developers.google.com/web/fundamentals/performance/http2/) instead of plaintext JSON, uses [Protocol Buffers](https://developers.google.com/protocol-buffers) for model development and provides features such as authentication, bidirectional streaming and flow control, blocking or nonblocking bindings, and cancellation and timeouts. 

## Code generation

Protocol Buffers allows us to define our data structures. After their definition we should use protobuf compiler to generate source code from these data structures. In order to generate the gRPC client and server interfaces from our .proto service definition run [generate.sh](generate.sh)

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
After running this command, you'll need to copy the IPv4 address to [grpc_flutter_client/lib/data/utils/constants/connectivity_constants.dart](./grpc_flutter_client/lib/data/utils/constants/connectivity_constants.dart). 
Don`t change port.  

To start the client:

```
cd grpc_flutter_client && flutter run
```
#### Running on a Device

In order to run on a real device, you must use [ngrok](https://ngrok.com). Ngrok is a globally distributed reverse proxy fronting your web services running in any cloud or private network, or your machine (enough a free ngrok account).

```
ngrok tcp 50001
```
Now you need to copy the `Forwarding` address (both host and port) to [grpc_flutter_client/lib/data/utils/constants/connectivity_constants.dart](./grpc_flutter_client/lib/data/utils/constants/connectivity_constants.dart).