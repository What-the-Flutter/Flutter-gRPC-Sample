import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';
import 'package:grpc_flutter_client/presentation/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(
        Get.find<PostInteractor>(),
        Get.find<UserInteractor>(),
      ),
    );
  }
}
