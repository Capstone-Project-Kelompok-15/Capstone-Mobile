import 'package:capstone_mobile/screen/home_Thread/home_thread_screen.dart';
import 'package:capstone_mobile/screen/landing_pages/landing_screen.dart';
import 'package:capstone_mobile/screen/login/login_screen.dart';
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
      routes: {
        SplashScreen.routename:(context) => const SplashScreen(),
        LandingScreen.routename:(context) => const LandingScreen(),
        LoginScreen.routename:(context) => const LoginScreen(),
        HomeThreadScreen.routename: (context) => HomeThreadScreen(),
      },
    );
  }
}
