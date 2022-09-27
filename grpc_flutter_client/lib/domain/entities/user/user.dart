import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
  }) = _User;

  factory User.withoutId({required String name}) {
    return User(
      id: -1,
      name: name,
    );
  }
}
