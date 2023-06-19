import 'package:capstone_mobile/screen/login/lupa_password/lupa_password_screen_2.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/button.dart';
import 'package:capstone_mobile/widget/input_field.dart';
import 'package:flutter/material.dart';

class LupaPassword1 extends StatefulWidget {
  static const routename = '/lupa-kata-sandi';
  const LupaPassword1({super.key});

  @override
  State<LupaPassword1> createState() => _LupaPassword1State();
}

class _LupaPassword1State extends State<LupaPassword1> {
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
              "Masukkan Email Anda",
              style: largeReguler,
            ),
            const InputField(
              title: " ",
              hintText: "e.g., lexliealexander@gmail.com",
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
                          builder: (context) => const LupaPassword2()));
                })
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
