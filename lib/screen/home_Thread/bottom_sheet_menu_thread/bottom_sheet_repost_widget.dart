import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/alert_dialog_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomSheetRepostThreadWidget extends StatelessWidget {
  const BottomSheetRepostThreadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                "Repost Thread",
                style: regulerBold,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Katakan sesuatu tentang ini... (opsional)",
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialogCustomWidget(
                    warna: primary500,
                    text: "Thread berhasil dilaporkan",
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: primary500,
              fixedSize: Size(mediaWidth * 0.5, 50),
            ),
            child: Text(
              "Bagikan Sekarang",
              style: buttonMedium,
            ),
          ),
        ],
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
