import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlertDialogCustomWidget extends StatelessWidget {
  AlertDialogCustomWidget({
    super.key,
    required this.warna,
    required this.text,
  });
  String text;
  Color warna;

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      backgroundColor: warna,
      content: SizedBox(
        height: 18,
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
