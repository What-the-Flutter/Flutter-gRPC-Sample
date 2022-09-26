import 'package:get/get.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_comment_repository.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_post_repository.dart';
import 'package:grpc_flutter_client/domain/data_interfaces/i_user_repository.dart';
import 'package:grpc_flutter_client/domain/interactors/comment_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/post_interactor.dart';
import 'package:grpc_flutter_client/domain/interactors/user_interactor.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    //REPOSITORIES
    // TODO: implement DI for repositories 
    
    //INTERACTORS
    Get.put<CommentInteractor>(CommentInteractor(Get.find<ICommentRepository>()));
    Get.put<PostInteractor>(PostInteractor(Get.find<IPostRepository>()));
    Get.put<UserInteractor>(UserInteractor(Get.find<IUserRepository>()));
  }
}