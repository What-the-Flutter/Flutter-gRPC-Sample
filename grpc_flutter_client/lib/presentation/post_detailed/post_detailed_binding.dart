import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/comment_interactor.dart';
import 'package:grpc_flutter_client/presentation/post_detailed/post_detailed_controller.dart';

class PostDetailedBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PostDetailedController>(
      PostDetailedController(
        Get.find<UserInteractor>(),
        Get.find<PostInteractor>(),
        Get.find<CommentInteractor>(),
      ),
    );
  }
}
