import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:grpc_flutter_client/domain/interactors/app_interactor.dart';

class AppController extends GetxController {
  final AppInteractor _appInteractor;

  AppController(this._appInteractor);

  @override
  void dispose() {
    _appInteractor.dispose();
    super.dispose();
  }
}
