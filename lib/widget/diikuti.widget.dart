import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class DiikutiProfile extends StatelessWidget {
  const DiikutiProfile({super.key});
  
  get tinyRegular => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
              color: Colors.transparent,
              height: 40,
              width: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'assets/icon/Following.png',
                      color: Colors.black,
                      scale: 1,
                    ),
                  ),
                  Text(
                    'Unfollow',
                    style: tinyRegular,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}