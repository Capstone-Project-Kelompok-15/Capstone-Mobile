import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomLaporkanThreadWidget extends StatelessWidget {
  double bodyHeight;
  double mediaWidth;
  BottomLaporkanThreadWidget(
      {super.key, required this.bodyHeight, required this.mediaWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bodyHeight * 0.45,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: mediaWidth,
      child: Row(
        children: [
          Row(
            children: [
              IconButton(
                  constraints: const BoxConstraints(),
                  padding: const EdgeInsets.only(right: 10),
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              Text(
                "Laporkan Thread",
                style: regulerBold,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
