import 'package:flutter/material.dart';

class GrpcTextButton extends StatelessWidget {
  final bool isButtonActive;
  final VoidCallback onClick;
  final String buttonText;
  final double textSize;

  const GrpcTextButton({
    Key? key,
    required this.isButtonActive,
    required this.onClick,
    required this.buttonText,
    this.textSize = 20,
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
          style: TextStyle(fontSize: textSize, color: Colors.white),
        ),
      ),
    );
  }
}
