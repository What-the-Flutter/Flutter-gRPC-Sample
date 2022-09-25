import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc_flutter_client/domain/entities/action.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    required int userId,
    required int postId,
    required String text,
    required DateTime date,
    required Action action,
  }) = _Comment;
}
