import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required int userId,
    required String text,
    required DateTime date,
  }) = _Post;
}
