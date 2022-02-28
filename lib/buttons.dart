import 'package:flutter/material.dart';
import 'package:calculator_buttons/main.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final buttonText;
  final buttonTapped;

  const MyButton({Key? key, this.color, this.textColor, this.buttonText, this.buttonTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor,fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
