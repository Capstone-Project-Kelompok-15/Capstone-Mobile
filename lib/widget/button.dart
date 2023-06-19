import 'package:flutter/material.dart';

import '../style/color_style.dart';
import '../style/font_style.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  final double width;

  const Button(
      {super.key,
      required this.buttonText,
      required this.width,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: width,
      decoration: BoxDecoration(
          color: primary500, borderRadius: BorderRadius.circular(15)),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: buttonMedium.copyWith(color: typography0),
          )),
    );
  }
}
