import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

import 'landing_screen_3.dart';

class LandingScreen2 extends StatefulWidget {
  const LandingScreen2({super.key});

  @override
  State<LandingScreen2> createState() => _LandingScreen2State();
}

class _LandingScreen2State extends State<LandingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 505,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/landing_2.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 54, right: 16),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 37,
                width: 113,
                decoration: BoxDecoration(
                    color: primary500, borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LandingScreen3()));
                    },
                    child: Text(
                      "Lewati",
                      style: buttonMedium.copyWith(color: typography0),
                    )),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Diskusi Lebih\nMudah Bersama\nSquad Space",
                  textAlign: TextAlign.center,
                  style: extraLargeMedium,
                ),
                const SizedBox(height: 161.76)
              ],
            ),
          )
        ],
      ),
    );
  }
}
