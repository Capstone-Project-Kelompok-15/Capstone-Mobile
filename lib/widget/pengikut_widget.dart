import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class PengikutProfile extends StatelessWidget {
  const PengikutProfile({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 2,
          ),
          child: ListTile(
            leading: ClipRRect(
              child: Image.asset(
                "assets/images/fotodummy.png",
                height: 50,
                width: 49.43,
                fit: BoxFit.fill,
              ),
            ),
            title: Text(
              "John doe",
              style: smallMedium,
            ),
            trailing: Container(
              height: 40,
              width: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'assets/icon/Close-Square.png',
                      color: Colors.black,
                      scale: 20,
                    ),
                  ),
                  Text(
                    'Hapus',
                    style: tinyRegular,
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}