// ignore_for_file: camel_case_types, must_be_immutable
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/bottom_laporkan_thread_widget.dart';
import 'package:capstone_mobile/widget/bottom_repost_thread_widget.dart';
import 'package:capstone_mobile/widget/button_thread_menu_widget.dart';
import 'package:flutter/material.dart';

class bottomThreadMenu extends StatelessWidget {
  double bodyHeight;
  double mediaWidth;
  bottomThreadMenu({
    super.key,
    required this.bodyHeight,
    required this.mediaWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 20),
      height: bodyHeight * 0.5,
      width: mediaWidth,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                SizedBox(
                  child: Text(
                    "Thread Menu",
                    style: regulerBold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/Census.png",
              namaButton: "Ikuti Thread",
              navigasi: (() {
                print("Ikuti Thread");
              }),
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/Bookmark.png",
              namaButton: "Tambahkan ke Bookmarks",
              navigasi: (() {
                print("object");
              }),
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/RotateRight.png",
              namaButton: "Repost Thread",
              navigasi: (() {
                // print("object 1");
                Navigator.pop(context);
                showModalBottomSheet<void>(
                  isDismissible: false,
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: BottomRepostThreadWidget(
                        bodyHeight: bodyHeight,
                        mediaWidth: mediaWidth,
                      ),
                    );
                  },
                );
              }),
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/Info.png",
              namaButton: "Laporkan Thread",
              navigasi: (() {
                Navigator.pop(context);
                showModalBottomSheet<void>(
                  isDismissible: false,
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return BottomLaporkanThreadWidget(
                      bodyHeight: bodyHeight,
                      mediaWidth: mediaWidth,
                    );
                  },
                );
              }),
            ),
            BtnThreadMenu(
                imageIcon: "assets/icon/Statistics.png",
                namaButton: "Direct Message to Joko Santoso",
                navigasi: (() {
                  print("Direct Message to Joko Santoso");
                })),
          ],
        ),
      ),
    );
  }
}
