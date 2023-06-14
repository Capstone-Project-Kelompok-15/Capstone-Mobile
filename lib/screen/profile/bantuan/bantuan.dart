import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                'Bantuan',
                style: regulerBold,
              )
            ],
          )
        ],
      ),
    );
  }
}
