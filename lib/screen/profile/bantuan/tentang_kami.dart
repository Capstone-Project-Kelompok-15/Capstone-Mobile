import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class TentangKamiScreen extends StatelessWidget {
  const TentangKamiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String content =
        'Squad Space adalah aplikasi forum diskusi kelompok yang memungkinkan pengguna untuk berinteraksi dan berdiskusi dengan anggota grup lainnya secara real-time. \n\nMelalui Squad Space, pengguna dapat bertukar informasi, berbagi pengalaman, dan saling memberikan masukan atau saran terkait topik yang sedang dibahas. Aplikasi ini sangat berguna bagi mereka yang ingin memperluas jaringan sosial mereka, atau untuk mereka yang ingin belajar lebih banyak tentang topik tertentu melalui interaksi dengan anggota grup yang memiliki pengetahuan yang lebih luas dan beragam.';
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icon/left3.png',
                      color: Colors.black,
                      scale: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 14.5,
                  ),
                  Text(
                    'Tentang Kami',
                    style: largeBold,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 89,
                  ),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'assets/images/logo_with_typo.png',
                    ),
                  ),
                  const SizedBox(
                    height: 22.6,
                  ),
                  Text(
                    content,
                    style: regulerReguler,
                    textAlign: TextAlign.justify,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
