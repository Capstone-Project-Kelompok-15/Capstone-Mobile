import 'dart:async';
import 'package:capstone_mobile/screen/landing_pages/landing_screen.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routename = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const routename = '/';

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(LandingScreen.routename,);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              width: 250,
              height: 250,
              child:Image(image: AssetImage('assets/images/logo_with_typo.png'))),
            const SizedBox(height: 202,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Diskusi lebih mudah bersama ", style: regulerReguler,),
                Text("Squad Space", style: regulerBold,)
              ],
            ),
            const SizedBox(height: 112,)
          ],
        ),
      ),
    );
  }
}
