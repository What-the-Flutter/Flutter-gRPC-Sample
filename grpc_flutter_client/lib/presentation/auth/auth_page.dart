import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc_flutter_client/presentation/auth/auth_controller.dart';

class AuthPage extends GetView<AuthController> {
  final _textController = TextEditingController();

  AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _nameField(),
            _signUpButton(),
          ],
        ),
      ),
    );
  }

  Widget _nameField() {
    return SizedBox(
      width: 200,
      child: TextField(
        onChanged: controller.setButtonActive,
        controller: _textController,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _signUpButton() {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Obx(
        () => TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
              controller.isButtonActive.value ? Colors.lightBlue : Colors.blue.shade300,
            ),
          ),
          onPressed: () {
            if (controller.isButtonActive.value) {
              controller.authenticate(_textController.value.text);
            }
          },
          child: const Text(
            'SignUp',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
