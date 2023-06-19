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
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.zero,
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
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
