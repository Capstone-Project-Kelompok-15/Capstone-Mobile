import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RadioButtonLaporanWidget extends StatefulWidget {
  String laporan;
  RadioButtonLaporanWidget({super.key, required this.laporan});

  @override
  State<RadioButtonLaporanWidget> createState() =>
      _RadioButtonLaporanWidgetState();
}

class _RadioButtonLaporanWidgetState extends State<RadioButtonLaporanWidget> {
  bool isradioButton = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 10,
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 0,
      minVerticalPadding: 0,
      leading: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: () {
          if (isradioButton == false) {
            isradioButton = true;
          } else {
            isradioButton = false;
          }
          setState(() {});
        },
        icon: isradioButton == true
            ? const Icon(
                Icons.radio_button_checked,
                color: Colors.blue,
              )
            : const Icon(
                Icons.radio_button_off,
              ),
      ),
      title: Text(widget.laporan),
    );
  }
}
