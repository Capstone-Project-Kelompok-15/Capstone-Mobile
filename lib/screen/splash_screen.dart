// ignore_for_file: unused_field, duplicate_ignore

import 'dart:async';
import 'package:capstone_mobile/screen/home_buttomNavigasi_screen.dart';
import 'package:capstone_mobile/screen/landing_pages/landing_screen.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routename = '/splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: unused_field
  static const routename = '/';

  void checkUser() async {
    Timer(const Duration(seconds: 3), () async {
      String cekUser = await getToken();
      if (cekUser.isNotEmpty) {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushNamed(
          HomeButtonmNavigasiScreen.routename,
        );
        // ignore: avoid_print
        print(cekUser);
      } else {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushNamed(
          LandingScreen.routename,
        );
      }
    });
  }

  @override
  void initState() {
    checkUser();
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
                child: Image(
                    image: AssetImage('assets/images/logo_with_typo.png'))),
            const SizedBox(
              height: 202,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Diskusi lebih mudah bersama ",
                  style: regulerReguler,
                ),
                Text(
                  "Squad Space",
                  style: regulerBold,
                )
              ],
            ),
            const SizedBox(
              height: 112,
            )
          ],
        ),
      ),
    );
  }
}
