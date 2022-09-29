import 'package:grpc_flutter_client/data/data_sources/interfaces/i_remote_data_source.dart';

class AppInteractor {
  final IRemoteDataSource _remoteDataSource;

  AppInteractor(this._remoteDataSource);

  void dispose() {
    _remoteDataSource.dispose();
  }
}
