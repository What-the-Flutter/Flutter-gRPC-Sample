import 'dart:async';

import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/entities/action.dart';
import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'package:grpc_flutter_client/domain/entities/comment/comment.dart';
import 'package:grpc_flutter_client/domain/entities/user/user.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/comment_interactor.dart';

class PostDetailedController extends GetxController {
  final UserInteractor _userInteractor;
  final PostInteractor _postInteractor;
  final CommentInteractor _commentInteractor;

  final comments = RxList<Comment>();
  late final User _currentUser;
  late final Post currentPost;
  late final bool isPostAuthor;
  late final StreamSubscription _commentStreamSubscription;
  late final RxBool isButtonActive;

  PostDetailedController(
    this._userInteractor,
    this._postInteractor,
    this._commentInteractor,
  );

  @override
  void onInit() {
    _currentUser = _userInteractor.user;
    currentPost = Get.arguments;
    _commentStreamSubscription =
        _commentInteractor.getAllCommentsByPostId(currentPost.id).listen(onCommentData);
    isPostAuthor = currentPost.userId == _currentUser.id;
    isButtonActive = false.obs;
    super.onInit();
  }

  void onCommentData(Comment newComment) {
    if (newComment.action == Action.add) {
      comments.insert(0, newComment);
    } else if (newComment.action == Action.delete) {
      comments.removeWhere((comment) => comment.id == newComment.id);
    }
  }

  void goHome() => Get.back();

  void deletePost() async {
    await _postInteractor.deletePost(currentPost.id);
    goHome();
  }

  void addComment(String text) async {
    final comment = Comment.withoutId(
      userId: _currentUser.id,
      postId: currentPost.id,
      authorName: _currentUser.name,
      text: text,
      date: DateTime.now(),
      action: Action.add,
    );
    await _commentInteractor.createComment(comment);
  }

  void deleteComment(int commentId) async {
    await _commentInteractor.deleteComment(commentId);
  }

  void setButtonActive(String text) => isButtonActive.value = text.isNotEmpty;

  bool isCommentAuthor(int commentUserId) => commentUserId == _currentUser.id;

  @override
  void dispose() {
    _commentStreamSubscription.cancel();
    super.dispose();
  }
}
