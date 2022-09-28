import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/entities/action.dart';
import 'package:grpc_flutter_client/domain/entities/user/user.dart';
import 'package:grpc_flutter_client/domain/entities/post/post.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';

class PostCreatingController extends GetxController {
  final PostInteractor _postInteractor;
  final UserInteractor _userInteractor;

  late final User _user;
  late final RxBool isButtonActive;

  PostCreatingController(this._postInteractor, this._userInteractor);

  @override
  void onInit() {
    _user = _userInteractor.user;
    isButtonActive = false.obs;
    super.onInit();
  }

  void goToPrevPage() => Get.back();

  void addPost(String text) async {
    final post = Post.withoutId(
      text: text,
      action: Action.add,
      authorName: _user.name,
      userId: _user.id,
      date: DateTime.now(),
    );
    await _postInteractor.createPost(post);
    goToPrevPage();
  }

  void setButtonActive(String text) => isButtonActive.value = text.isNotEmpty;
}
