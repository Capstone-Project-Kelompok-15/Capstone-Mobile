import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlertDialogCustomWidget extends StatelessWidget {
  AlertDialogCustomWidget({
    super.key,
    required this.bodyHeight,
    required this.mediaQueryWidth,
    required this.warna,
    required this.text,
  });
  String text;
  Color warna;
  final double bodyHeight;
  final double mediaQueryWidth;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      backgroundColor: warna,
      content: SizedBox(
        height: bodyHeight * 0.018,
        width: mediaQueryWidth,
        child: Center(
          child: Text(
            text,
            style: smallBoldaAlertDialog,
          ),
        ),
      ),
    );
  }
}
