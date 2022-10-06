///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $3;
export 'user.pb.dart';

class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$3.ProtoUser, $3.ProtoUser>(
      '/UserService/CreateUser',
      ($3.ProtoUser value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ProtoUser.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.ProtoUser> createUser($3.ProtoUser request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ProtoUser, $3.ProtoUser>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ProtoUser.fromBuffer(value),
        ($3.ProtoUser value) => value.writeToBuffer()));
  }

  $async.Future<$3.ProtoUser> createUser_Pre(
      $grpc.ServiceCall call, $async.Future<$3.ProtoUser> request) async {
    return createUser(call, await request);
  }

  $async.Future<$3.ProtoUser> createUser(
      $grpc.ServiceCall call, $3.ProtoUser request);
}
