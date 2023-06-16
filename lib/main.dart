import 'package:capstone_mobile/screen/bookmark/bookmark_screen.dart';
import 'package:capstone_mobile/screen/follow_thread/follow_thread_screen.dart';
import 'package:capstone_mobile/screen/home_Thread/create_thread_screen.dart';
import 'package:capstone_mobile/screen/home_Thread/home_thread_screen.dart';
import 'package:capstone_mobile/screen/home_Thread/komentar_screen.dart';
import 'package:capstone_mobile/screen/home_buttomNavigasi_screen.dart';
import 'package:capstone_mobile/screen/pemberitahuan/pemberitahuan_screen.dart';
import 'package:flutter/material.dart';

import 'screen/leaderboard/leaderboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeThreadScreen(),
      initialRoute: HomeButtonmNavigasiScreen.routename,
      routes: {
        HomeButtonmNavigasiScreen.routename: (context) =>
            const HomeButtonmNavigasiScreen(),
        HomeThreadScreen.routename: (context) => HomeThreadScreen(),
        CreateThreadScreen.routename: (context) => const CreateThreadScreen(),
        KomentarScreen.routename: (context) => const KomentarScreen(),
        BookmarkScreen.routename: (context) => BookmarkScreen(),
        FollowByThread.routename:(context) =>  const FollowByThread(),
        LeaderBoard.routename: (context) => const LeaderBoard(),
        PemberitahuanScreen.routename: (context) => const PemberitahuanScreen(),
      },
    );
  }
}
