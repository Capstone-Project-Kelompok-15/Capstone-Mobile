// ignore_for_file: camel_case_types, must_be_immutable
import 'package:capstone_mobile/style/font_style.dart';
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
            SizedBox(
              child: Text(
                "Thread Menu",
                style: regulerBold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/Census.png",
              namaButton: "Ikuti Thread",
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/Bookmark.png",
              namaButton: "Tambahkan ke Bookmarks",
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/RotateRight.png",
              namaButton: "Repost Thread",
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/Info.png",
              namaButton: "Laporkan Thread",
            ),
            BtnThreadMenu(
              imageIcon: "assets/icon/Statistics.png",
              namaButton: "Direct Message to Joko Santoso",
            ),
          ],
        ),
      ),
    );
  }
}

class BtnThreadMenu extends StatelessWidget {
  String imageIcon;
  String namaButton;
  BtnThreadMenu({
    super.key,
    required this.imageIcon,
    required this.namaButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Image(
            image: AssetImage(imageIcon),
            width: 24,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            namaButton,
            style: regulerMedium,
          ),
        ],
      ),
    );
  }
}
