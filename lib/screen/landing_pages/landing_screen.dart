import 'package:capstone_mobile/screen/landing_pages/landing_screen_1.dart';
import 'package:capstone_mobile/screen/landing_pages/landing_screen_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../style/color_style.dart';
import '../../style/font_style.dart';
import 'landing_screen_2.dart';

class LandingScreen extends StatefulWidget {
  static const routename = '/landing-screen';
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      GestureDetector(
        onTap: () {
          _controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
        },
        child: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            LandingScreen1(),
            LandingScreen2(),
            LandingScreen3()
          ],
        ),
      ),
      onLastPage
          ? Container()
          : Padding(
              padding: const EdgeInsets.only(top: 54, right: 16),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 37,
                  width: 113,
                  decoration: BoxDecoration(
                      color: primary500,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text(
                        "Lewati",
                        style: buttonMedium.copyWith(color: typography0),
                      )),
                ),
              ),
            ),
      Container(
          alignment: const Alignment(0, 0.85),
          child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                activeDotColor: info500,
                dotHeight: 4.16,
                dotWidth: 16.64,
                expansionFactor: 2,
                dotColor: const Color(0xFF3A3A3C)),
            count: 3,
            controller: _controller,
          ))
    ]));
  }
}
