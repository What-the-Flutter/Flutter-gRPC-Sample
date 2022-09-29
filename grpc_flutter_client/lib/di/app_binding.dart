import 'package:get/get.dart';
import 'package:grpc_flutter_client/data/data_sources/interfaces/i_remote_data_source.dart';
import 'package:grpc_flutter_client/data/data_sources/remote_data_provider.dart';
import 'package:grpc_flutter_client/data/data_sources/remote_data_source.dart';
import 'package:grpc_flutter_client/data/mappers/comment_mapper.dart';
import 'package:grpc_flutter_client/data/mappers/post_mapper.dart';
import 'package:grpc_flutter_client/data/mappers/user_mapper.dart';
import 'package:grpc_flutter_client/data/repositories/comment_repository.dart';
import 'package:grpc_flutter_client/data/repositories/post_repository.dart';
import 'package:grpc_flutter_client/data/repositories/user_repository.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_comment_repository.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_post_repository.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_user_repository.dart';
import 'package:grpc_flutter_client/domain/interactors/app_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/comment_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    //MAPPERS
    Get.put<UserMapper>(UserMapper());
    Get.put<PostMapper>(PostMapper());
    Get.put<CommentMapper>(CommentMapper());

    //DATA SOURCES
    Get.put<RemoteDataProvider>(RemoteDataProvider());
    Get.put<IRemoteDataSource>(RemoteDataSource(
      Get.find<RemoteDataProvider>(),
      Get.find<UserMapper>(),
      Get.find<PostMapper>(),
      Get.find<CommentMapper>(),
    ));

    //REPOSITORIES
    Get.put<IUserRepository>(UserRepository(Get.find<IRemoteDataSource>()));
    Get.put<IPostRepository>(PostRepository(Get.find<IRemoteDataSource>()));
    Get.put<ICommentRepository>(CommentRepository(Get.find<IRemoteDataSource>()));

    //INTERACTORS
    Get.put<CommentInteractor>(CommentInteractor(Get.find<ICommentRepository>()));
    Get.put<PostInteractor>(PostInteractor(Get.find<IPostRepository>()));
    Get.put<UserInteractor>(UserInteractor(Get.find<IUserRepository>()));
    Get.put<AppInteractor>(AppInteractor(Get.find<IRemoteDataSource>()));
  }
}
