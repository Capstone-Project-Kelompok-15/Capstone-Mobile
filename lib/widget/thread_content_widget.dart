import 'package:capstone_mobile/screen/home_Thread/komentar_screen.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/screen/home_Thread/bottom_sheet_menu_thread/bottom_sheet_shere_widget.dart';
import 'package:capstone_mobile/screen/home_Thread/bottom_sheet_menu_thread/bottom_sheet_menu_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class ThreadContentCustomWidget extends StatefulWidget {
  String name;
  String contentThread;
  double? mediaWidth;
  double? bodyheight;
  bool? isLeaderBoard;
  int? ranking;
  Image? image;

  ThreadContentCustomWidget({
    super.key,
    required this.faker,
    required this.name,
    required this.contentThread,
    this.mediaWidth,
    this.bodyheight,
    this.isLeaderBoard = false,
    this.ranking,
    this.image,
  });

  final Faker faker;

  @override
  State<ThreadContentCustomWidget> createState() =>
      _ThreadContentCustomWidgetState();
}

class _ThreadContentCustomWidgetState extends State<ThreadContentCustomWidget> {
  bool isFollowing = false;
  bool islike = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            thickness: 2,
            indent: 2,
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            leading: CircleAvatar(
              child: widget.image,
            ),
            title: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  Text(
                    widget.name,
                    style: regulerMedium,
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: VerticalDivider(
                      thickness: 1,
                      width: 20,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    iconSize: 20,
                    splashRadius: 18,
                    onPressed: () {
                      if (isFollowing == false) {
                        isFollowing = true;
                      } else {
                        isFollowing = false;
                      }
                      setState(() {});
                    },
                    icon: isFollowing == true
                        ? Image.asset(
                            "assets/icon/Following.png",
                            width: 24,
                            height: 24,
                            color: Colors.black,
                          )
                        : Image.asset(
                            "assets/icon/Follow.png",
                            width: 24,
                            height: 24,
                            color: Colors.black,
                          ),
                  ),
                ],
              ),
            ),
            subtitle: Text("53 menit yang lalu,Di Konoha", style: smallReguler),
            // untuk menampilkan rangkin bulanan dan mingguan saat halaman leaderboard
            trailing: widget.isLeaderBoard == true
                ? Text(
                    "#${widget.ranking}",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: success800),
                  )
                : const SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "UU TENAGA KERJA",
              style: regulerBold,
            ),
          ),
          ReadMoreText(
            // content masih menggunakan data dari faker
            widget.contentThread,
            trimLines: 4,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Lihat Selengkapnya',
            trimExpandedText: 'Tampilkan lebih Sedikit',
            moreStyle: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: primary500),
            lessStyle: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: primary500),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: widget.mediaWidth! * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            if (islike == false) {
                              islike = true;
                            } else {
                              islike = false;
                            }
                            setState(() {});
                          },
                          icon: islike == true
                              ? Image.asset(
                                  "assets/icon/FeedbackBold.png",
                                  width: 24,
                                )
                              : Image.asset(
                                  "assets/icon/Feedback.png",
                                  width: 24,
                                ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(KomentarScreen.routename);
                          },
                          icon: Image.asset(
                            "assets/icon/chat.png",
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {
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
                                return const BottomSheetShereWidget();
                              },
                            );
                          },
                          icon: Image.asset("assets/icon/Send.png"),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
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
                        return const BottomSheetThreadMenu();
                      },
                    );
                  },
                  icon: Image.asset(
                    "assets/icon/Menu.png",
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${widget.faker.person.firstName()} dan 155 lainnya",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text("4 Komentar"),
            ],
          ),
        ],
      ),
    );
  }
}