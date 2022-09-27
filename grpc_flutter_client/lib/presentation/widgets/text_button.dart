import 'package:flutter/material.dart';

class GrpcTextButton extends StatelessWidget {
  final bool isButtonActive;
  final VoidCallback onClick;
  final String buttonText;

  const GrpcTextButton({
    Key? key,
    required this.isButtonActive,
    required this.onClick,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            isButtonActive ? Colors.lightBlue : Colors.blue.shade300,
          ),
        ),
        onPressed: () {
          if (isButtonActive) {
            onClick();
          }
        },
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}
