import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemThreadMenu extends StatelessWidget {
  String imageIcon;
  String namaButton;
  Function() onTap;
  ItemThreadMenu({
    super.key,
    required this.imageIcon,
    required this.namaButton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            Image(
              image: AssetImage(imageIcon),
              width: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              namaButton,
              style: regulerMedium,
            ),
          ],
        ),
      ),
    );
  }
}
