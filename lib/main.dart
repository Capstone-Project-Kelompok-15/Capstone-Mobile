import 'package:capstone_mobile/screen/bookmark/bookmark_screen.dart';
import 'package:capstone_mobile/screen/home_Thread/create_thread_screen.dart';
import 'package:capstone_mobile/screen/home_Thread/home_thread_screen.dart';
import 'package:capstone_mobile/screen/home_Thread/komentar_screen.dart';
import 'package:capstone_mobile/screen/home_buttomNavigasi_screen.dart';
import 'package:capstone_mobile/screen/pemberitahuan/pemberitahuan_screen.dart';
import 'package:capstone_mobile/screen/settings/pengaturan_akun_screen.dart';
import 'package:capstone_mobile/screen/settings/setting_screen.dart';
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
      home: 
      // const HomeButtonmNavigasiScreen(),
      // BookmarkScreen(),
      const SettingScreen(),
      initialRoute: 
      // HomeButtonmNavigasiScreen.routename,
      // BookmarkScreen.routename,
      SettingScreen.routename,
      routes: {
        HomeButtonmNavigasiScreen.routename: (context) =>
            const HomeButtonmNavigasiScreen(),
        HomeThreadScreen.routename: (context) => HomeThreadScreen(),
        CreateThreadScreen.routename: (context) => const CreateThreadScreen(),
        KomentarScreen.routename: (context) => const KomentarScreen(),
        PemberitahuanScreen.routename: (context) => const PemberitahuanScreen(),
        BookmarkScreen.routename: (context) => BookmarkScreen(),
        PengaturanAkunScreen.routename: (context) => const PengaturanAkunScreen(),
        SettingScreen.routename: (context) => const SettingScreen(),
      },
    );
  }
}
