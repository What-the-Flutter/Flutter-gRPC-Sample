import 'package:grpc_flutter_client/data/data_sources/interfaces/i_remote_data_source.dart';
import 'package:grpc_flutter_client/domain/interactors/base_interactor.dart';

class AppInteractor extends BaseInteractor{
  final IRemoteDataSource _remoteDataSource;

  AppInteractor(this._remoteDataSource);

  void dispose() {
    _remoteDataSource.dispose();
  }
}
