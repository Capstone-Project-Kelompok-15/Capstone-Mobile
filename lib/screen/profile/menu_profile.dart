import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icon/left3.png',
                      color: Colors.black,
                      scale: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 14.5,
                  ),
                  Text(
                    'Menu',
                    style: regulerBold,
                  )
                ],
              ),
              const SizedBox(
                height: 47.5,
              ),
              GestureDetector(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon/Bookmark.png',
                      color: const Color(0xff222628),
                      scale: 21,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Bookmarks',
                      style: regulerMedium,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              GestureDetector(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon/Qustion.png',
                      color: const Color(0xff222628),
                      scale: 21,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Bantuan',
                      style: regulerMedium,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              GestureDetector(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon/Settings.png',
                      color: const Color(0xff222628),
                      scale: 21,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Setting',
                      style: regulerMedium,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
