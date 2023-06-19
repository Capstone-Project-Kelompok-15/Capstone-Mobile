import 'package:capstone_mobile/screen/profile/bantuan/faq.dart';
import 'package:capstone_mobile/screen/profile/bantuan/kebijakan_aplikasi.dart';
import 'package:capstone_mobile/screen/profile/bantuan/tentang_kami.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Bantuan',
                    style: regulerBold,
                  )
                ],
              ),
              const SizedBox(
                height: 23.5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TentangKamiScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Tentang Kami',
                      style: regulerMedium.copyWith(
                        color: const Color(0xff195FAA),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FaqScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'FAQ',
                      style: regulerMedium.copyWith(
                        color: const Color(0xff195FAA),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const KebijakanAplikasiScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Kebijakan Aplikasi',
                      style: regulerMedium.copyWith(
                        color: const Color(0xff195FAA),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
