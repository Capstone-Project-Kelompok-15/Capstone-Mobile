import 'package:capstone_mobile/screen/home_Thread/create_thread_screen.dart';
import 'package:capstone_mobile/screen/home_Thread/home_thread_screen.dart';

import 'package:capstone_mobile/screen/home_Thread/komentar_screen.dart';
import 'package:capstone_mobile/screen/home_buttomNavigasi_screen.dart';
import 'package:capstone_mobile/screen/landing_pages/landing_screen.dart';
import 'package:capstone_mobile/screen/login/login_screen.dart';
import 'package:capstone_mobile/screen/login/lupa_password/lupa_password_screen_1.dart';
import 'package:capstone_mobile/screen/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeButtonmNavigasiScreen(),
      initialRoute: SplashScreen.routename,
      routes: {
        SplashScreen.routename:(context) => const SplashScreen(),
        LandingScreen.routename:(context) => const LandingScreen(),
        LoginScreen.routename:(context) => const LoginScreen(),
        LupaPassword1.routename:(context) => const LupaPassword1(),
        HomeButtonmNavigasiScreen.routename: (context) =>
            const HomeButtonmNavigasiScreen(),
        HomeThreadScreen.routename: (context) => HomeThreadScreen(),
        CreateThreadScreen.routename: (context) => const CreateThreadScreen(),
        KomentarScreen.routename: (context) => const KomentarScreen(),
      },
    );
  }
}
