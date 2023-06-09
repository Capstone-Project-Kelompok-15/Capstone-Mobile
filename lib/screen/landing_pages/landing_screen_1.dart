import 'package:flutter/material.dart';
import '../../style/font_style.dart';

class LandingScreen1 extends StatefulWidget {
  const LandingScreen1({super.key});

  @override
  State<LandingScreen1> createState() => _LandingScreen1State();
}

class _LandingScreen1State extends State<LandingScreen1> {
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
                    image: AssetImage('assets/images/landing_1.png'),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Mudah Bertukar\nInformasi Bersama\nSquad Space",
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
