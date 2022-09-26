import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc_flutter_client/domain/entities/action.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required int userId,
    required String authorName,
    required String text,
    required DateTime date,
    required Action action,
  }) = _Post;

  factory Post.withoutId({
    required int userId,
    required String authorName,
    required String text,
    required DateTime date,
    required Action action,
  }) {
    return Post(
      id: -1,
      userId: userId,
      authorName: authorName,
      text: text,
      date: date,
      action: action,
    );
  }
}
