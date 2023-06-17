// ignore_for_file: file_names

import 'package:capstone_mobile/screen/home_Thread/home_thread_screen.dart';
import 'package:capstone_mobile/screen/profile/profile_user_screen.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:flutter/material.dart';

import 'follow_thread/follow_thread_screen.dart';

class HomeButtonmNavigasiScreen extends StatefulWidget {
  static const routename = "/HomeMainScreen";
  const HomeButtonmNavigasiScreen({super.key});

  @override
  State<HomeButtonmNavigasiScreen> createState() =>
      _HomeButtonmNavigasiScreen();
}

class _HomeButtonmNavigasiScreen extends State<HomeButtonmNavigasiScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    HomeThreadScreen(),
    const FollowByThread(),
    const Text(
      'Index 2: LeaderBoard',
      style: optionStyle,
    ),
    const ProfileUserScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 8,
          ),
        ]),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/icon/Home.png"),
                width: 24,
                height: 24,
              ),
              activeIcon: Image(
                image: AssetImage("assets/icon/HomeBold.png"),
                width: 24,
                height: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/icon/Follow.png"),
                width: 24,
                height: 24,
              ),
              activeIcon: Image(
                image: AssetImage("assets/icon/FollowBold.png"),
                width: 24,
                height: 24,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/icon/Leaderboard.png"),
                width: 26,
                height: 26,
              ),
              activeIcon: Image(
                image: AssetImage("assets/icon/LeaderboardBold.png"),
                width: 26,
                height: 26,
              ),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/icon/Profile.png"),
                width: 24,
                height: 24,
              ),
              activeIcon: Image(
                image: AssetImage("assets/icon/ProfileBold.png"),
                width: 24,
                height: 24,
              ),
              label: 'School',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: primary500,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
