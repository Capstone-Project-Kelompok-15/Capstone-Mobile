import 'package:capstone_mobile/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../style/color_style.dart';
import '../../../style/font_style.dart';
import '../../../widget/button.dart';
import '../../../widget/input_field.dart';

class LupaPassword3 extends StatefulWidget {
  const LupaPassword3({super.key});

  @override
  State<LupaPassword3> createState() => _LupaPassword3State();
}

class _LupaPassword3State extends State<LupaPassword3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: typography500),
        title: Text(
          "Lupa Kata Sandi",
          style: largeBold.copyWith(color: typography500),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            Text(
              "Masukkan kata sandi baru",
              style: largeReguler,
              textAlign: TextAlign.center,
            ),
            const InputField(
              title: " ",
              hintText: "Masukkan kata sandi baru",
            ),
            const InputField(
              title: " ",
              hintText: "Konfirmasi kata sandi baru",
            ),
            const SizedBox(
              height: 24,
            ),
            Button(
                buttonText: "Kirim",
                width: 104,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                })
          ],
        ),
      ),
    );
  }
}