import 'package:flutter/material.dart';
import '../../../style/color_style.dart';
import '../../../style/font_style.dart';
import '../../../widget/button.dart';
import '../../../widget/input_field.dart';
import 'lupa_password_screen_3.dart';

class LupaPassword2 extends StatefulWidget {
  const LupaPassword2({super.key});

  @override
  State<LupaPassword2> createState() => _LupaPassword2State();
}

class _LupaPassword2State extends State<LupaPassword2> {
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
            const SizedBox(height: 48,),
            Text("Masukkan kode yang telah dikirim\nke lexliealexander@gmail.com", style: largeReguler, textAlign: TextAlign.center,),
            const InputField(
              title: " ",
              hintText: "e.g., 123456",
            ),
            const SizedBox(height: 24,),
            Button(buttonText: "Kirim", width: 104, onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LupaPassword3()));
            }),
            const SizedBox(height: 48,),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 36),
                child: Row(
                  children: [
                    const Image(image: AssetImage("assets/icon/Message.png")),
                    const SizedBox(width: 14,),
                    Text("Kirim ulang kode", style: regulerReguler,)
                  ],
                ),
              ),
              onTap: () {
                
              },
            )
          ],
        ),
      ),
    );
  }
}