import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/button.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class LandingScreen3 extends StatefulWidget {
  const LandingScreen3({super.key});

  @override
  State<LandingScreen3> createState() => _LandingScreen3State();
}

class _LandingScreen3State extends State<LandingScreen3> {
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
                    image: AssetImage('assets/images/landing_3.png'),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Dapat Membentuk\nCommunity\nSecara Online",
                  textAlign: TextAlign.center,
                  style: extraLargeMedium,
                ),
                const SizedBox(height: 74.4),
                Button(
                    buttonText: "Lanjutkan",
                    width: 138,
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.routename,);}
                    ),
                const SizedBox(height: 119,)
              ],
            ),
          )
        ],
      ),
    );
  }
}