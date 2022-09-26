import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';
import 'package:grpc_flutter_client/presentation/auth/auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(
      AuthController(
        Get.find<UserInteractor>(),
      ),
    );
  }
}
