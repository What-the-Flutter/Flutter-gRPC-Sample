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
    final user = await _userInteractor.createUser(User(name: name, id: -1));
    Get.offNamed(Routes.home, arguments: user);
  }

  void setButtonActive(String text) {
    isButtonActive.value = text.isNotEmpty;
  }
}
