// ignore_for_file: file_names

import 'package:capstone_mobile/screen/home_Thread/home_Screen/home_thread_screen.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:flutter/material.dart';

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
    const Text(
      'Index 1: Follow',
      style: optionStyle,
    ),
    const Text(
      'Index 2: LeaderBoard',
      style: optionStyle,
    ),
    const Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
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
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
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
