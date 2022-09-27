import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/entities/user/user.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';
import 'package:grpc_flutter_client/presentation/app/navigation/routes.dart';

class AuthController extends GetxController {
  late final RxBool isButtonActive;
  final UserInteractor _userInteractor;

  AuthController(this._userInteractor);

  @override
  void onInit() {
    isButtonActive = false.obs;
    super.onInit();
  }

  void authenticate(String name) async {
    await _userInteractor.createUser(User.withoutId(name: name));
    Get.offNamed(Routes.home);
  }

  void setButtonActive(String text) => isButtonActive.value = text.isNotEmpty;
}
