import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc_flutter_client/di/app_binding.dart';
import 'package:grpc_flutter_client/presentation/auth/auth_binding.dart';
import 'package:grpc_flutter_client/presentation/auth/auth_page.dart';
import 'package:grpc_flutter_client/presentation/home/home_binding.dart';
import 'package:grpc_flutter_client/presentation/home/home_page.dart';
import 'package:grpc_flutter_client/presentation/home/post_creating/post_creating_binding.dart';
import 'package:grpc_flutter_client/presentation/home/post_creating/post_creating_page.dart';

import 'navigation/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.auth,
      getPages: _getPages,
      initialBinding: AppBinding(),
    );
  }

  List<GetPage> get _getPages {
    return [
      GetPage(
        name: Routes.auth,
        page: () => AuthPage(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: Routes.addPost,
        page: () => PostCreatingPage(),
        binding: PostCreatingBinding(),
      )
      //TODO: implement routes
    ];
  }
}
