import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/dropdown_faq_widget.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.all(24),
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
                      'FAQ',
                      style: largeBold,
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const FaqDropDown()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
