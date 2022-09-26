import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';
import 'package:grpc_flutter_client/presentation/post_creating/post_creating_controller.dart';

class PostCreatingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PostCreatingController>(
      PostCreatingController(
        Get.find<PostInteractor>(),
        Get.find<UserInteractor>(),
      ),
    );
  }
}
