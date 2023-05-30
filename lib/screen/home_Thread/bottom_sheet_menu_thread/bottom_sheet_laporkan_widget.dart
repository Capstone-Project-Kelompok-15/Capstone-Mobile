import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/radio_button_laporan_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomSheetLaporkanThreadWidget extends StatelessWidget {
  double bodyHeight;
  double mediaWidth;

  BottomSheetLaporkanThreadWidget(
      {super.key, required this.bodyHeight, required this.mediaWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bodyHeight,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: mediaWidth,
      child: Column(
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
            height: 10,
          ),
          RadioButtonLaporanWidget(
            laporan: "Kekerasan",
          ),
          RadioButtonLaporanWidget(
            laporan: "Informasi palsu",
          ),
          RadioButtonLaporanWidget(
            laporan: "Ujaran simbol kebencian",
          ),
          RadioButtonLaporanWidget(
            laporan: "Penipuan atau penggelapan",
          ),
          RadioButtonLaporanWidget(
            laporan: "Informasi palsu",
          ),
          RadioButtonLaporanWidget(
            laporan: "Bulliying atau pelecehan",
          ),
          RadioButtonLaporanWidget(
            laporan: "bunuh diri",
          ),
        ],
      ),
    );
  }
}
