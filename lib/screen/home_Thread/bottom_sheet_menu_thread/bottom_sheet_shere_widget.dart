// ignore_for_file: must_be_immutable

import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class BottomSheetShereWidget extends StatelessWidget {
  const BottomSheetShereWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: mediaWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  constraints: const BoxConstraints(),
                  padding: const EdgeInsets.only(right: 10),
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              Text(
                "Bagikan",
                style: regulerBold,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/WhatsApp.png",
                    width: 40,
                  ),
                  Text(
                    "Whatsapp",
                    style: smallReguler,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/Instagram.png",
                    width: 40,
                  ),
                  Text(
                    "Instagram",
                    style: smallReguler,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/Shere.png",
                    width: 40,
                  ),
                  Text(
                    "Salin Tautan",
                    style: smallReguler,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/Facebook.png",
                    width: 40,
                  ),
                  Text(
                    "Facebook",
                    style: smallReguler,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/Tiktok.png",
                    width: 40,
                  ),
                  Text(
                    "Tiktok",
                    style: smallReguler,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/Telegram.png",
                    width: 40,
                  ),
                  Text(
                    "Telegram",
                    style: smallReguler,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}