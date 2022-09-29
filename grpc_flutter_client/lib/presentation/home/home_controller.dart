import 'dart:async';

import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/entities/action.dart';
import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';
import 'package:grpc_flutter_client/presentation/app/navigation/routes.dart';

class HomeController extends GetxController {
  late final String userName;
  final posts = RxList<Post>();
  final PostInteractor _postInteractor;
  final UserInteractor _userInteractor;

  late final StreamSubscription _postStreamSubscription;

  HomeController(this._postInteractor, this._userInteractor);

  @override
  void onInit() {
    userName = _userInteractor.user.name;
    _postStreamSubscription = _postInteractor.allPosts.listen(onPostData);
    super.onInit();
  }

  void onPostData(Post newPost) {
    if (newPost.action == Action.add) {
      posts.insert(0, newPost);
    } else if (newPost.action == Action.delete) {
      posts.removeWhere((post) => post.id == newPost.id);
    }
  }

  void onPostClick(int id) {
    final post = posts.firstWhere((element) => element.id == id);
    Get.toNamed(Routes.post, arguments: post);
  }

  void onPostAddButtonClick() {
    Get.toNamed(Routes.addPost);
  }

  String truncate(String text, {length = 100, omission = '...'}) {
    if (length >= text.length) {
      return text;
    }
    return text.replaceRange(length, text.length, omission);
  }

  @override
  void dispose() {
    _postStreamSubscription.cancel();
    super.dispose();
  }
}
