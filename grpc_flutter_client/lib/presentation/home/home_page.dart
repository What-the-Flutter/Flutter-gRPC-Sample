import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:grpc_flutter_client/presentation/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome ${controller.userName}')),
      body: _posts(),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.onPostAddButtonClick,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _posts() {
    return Obx(
      () => ListView.separated(
        itemCount: controller.posts.length,
        padding: const EdgeInsets.all(10),
        separatorBuilder: (context, index) => const Divider(thickness: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => controller.onPostClick(controller.posts[index].id),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  controller.posts[index].authorName[0],
                  style: TextStyle(color: Colors.grey.shade300),
                ),
              ),
              title: Text(controller.truncate(controller.posts[index].text)),
              subtitle: Text(
                'On ${DateFormat('yyyy-MM-dd – HH:mm').format(controller.posts[index].date)}\n'
                'from ${controller.posts[index].authorName}',
              ),
            ),
          );
        },
      ),
    );
  }
}
