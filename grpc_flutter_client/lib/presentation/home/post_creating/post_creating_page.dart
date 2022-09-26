import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc_flutter_client/presentation/home/post_creating/post_creating_controller.dart';
import 'package:grpc_flutter_client/presentation/widgets/text_button.dart';

class PostCreatingPage extends GetView<PostCreatingController> {
  final _textController = TextEditingController();

  PostCreatingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a new post'),
        centerTitle: true,
        leading: IconButton(
          onPressed: controller.goBack,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _nameField(),
            _createButton(),
          ],
        ),
      ),
    );
  }

  Widget _nameField() {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        autofocus: false,
        decoration: const InputDecoration(
          labelText: 'Add some text',
          border: OutlineInputBorder(),
        ),
        onChanged: controller.setButtonActive,
        minLines: 1,
        maxLines: 7,
        controller: _textController,
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _createButton() {
    return Obx(
      () => GrpcTextButton(
        isButtonActive: controller.isButtonActive.value,
        onClick: () => controller.addPost(_textController.value.text),
        buttonText: 'Create',
      ),
    );
  }
}
