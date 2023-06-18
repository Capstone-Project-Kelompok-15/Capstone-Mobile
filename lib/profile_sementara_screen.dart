import 'package:capstone_mobile/screen/landing_pages/landing_screen.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:flutter/material.dart';

class ProvileSementaraScreen extends StatelessWidget {
  const ProvileSementaraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const LandingScreen()),
              ),
            );
            removeToken();
          },
          child: const Text("Keluar"),
        ),
      ),
    );
  }
}
