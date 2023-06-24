// ignore_for_file: camel_case_types, must_be_immutable
import 'package:capstone_mobile/service/bookmark_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/screen/home_Thread/bottom_sheet_menu_thread/bottom_sheet_laporkan_widget.dart';
import 'package:capstone_mobile/screen/home_Thread/bottom_sheet_menu_thread/bottom_sheet_repost_widget.dart';
import 'package:capstone_mobile/widget/alert_dialog_widget.dart';
import 'package:capstone_mobile/widget/item_thread_menu.dart';
import 'package:flutter/material.dart';

class BottomSheetThreadMenu extends StatelessWidget {
  const BottomSheetThreadMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
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
                  icon: const Icon(Icons.arrow_back),
                ),
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
            ItemThreadMenu(
              imageIcon: "assets/icon/Census.png",
              namaButton: "Ikuti Thread",
              navigasi: () {
                print("Ikuti Thread");
              },
            ),
            ItemThreadMenu(
              imageIcon: "assets/icon/Bookmark.png",
              namaButton: "Tambahkan ke Bookmarks",
              navigasi: () {
                print("object");
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialogCustomWidget(
                      warna: primary500,
                      text: "Thread Telah Ditambahkan ke Bookmark",
                    );
                  },
                );
                BookmarkService();
              },
            ),
            ItemThreadMenu(
              imageIcon: "assets/icon/RotateRight.png",
              namaButton: "Repost Thread",
              navigasi: () {
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
                      child: const BottomSheetRepostThreadWidget(),
                    );
                  },
                );
              },
            ),
            ItemThreadMenu(
              imageIcon: "assets/icon/Info.png",
              namaButton: "Laporkan Thread",
              navigasi: () {
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
                    return const BottomSheetLaporkanThreadWidget();
                  },
                );
              },
            ),
            ItemThreadMenu(
              imageIcon: "assets/icon/Statistics.png",
              namaButton: "Direct Message to Joko Santoso",
              navigasi: () {
                print("Direct Message to Joko Santoso");
              },
            ),
          ],
        ),
      ),
    );
  }
}
