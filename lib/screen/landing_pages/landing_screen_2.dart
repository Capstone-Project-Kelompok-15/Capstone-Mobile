import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class LandingScreen2 extends StatefulWidget {
  const LandingScreen2({super.key});

  @override
  State<LandingScreen2> createState() => _LandingScreen2State();
}

class _LandingScreen2State extends State<LandingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 505,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/landing_2.png'),
                      fit: BoxFit.cover)),
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
      ),
    );
  }
}