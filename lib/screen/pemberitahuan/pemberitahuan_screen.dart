import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/widget/item_notification_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:faker/faker.dart';
// import 'package:capstone_mobile/widget/thread_content_widget.dart';


class PemberitahuanScreen extends StatefulWidget {
  static const routename = "/pemberitahuan";
  
  const PemberitahuanScreen({super.key});

  // final faker = Faker();

  @override
  State<PemberitahuanScreen> createState() => _PemberitahuanScreenState();
  
}

class _PemberitahuanScreenState extends State<PemberitahuanScreen> {
  // ignore: unnecessary_new
  final faker = new Faker();
  String contentKomentar = "";

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final myAppBar = AppBar(
      iconTheme: IconThemeData(color: typography500),
      title: Text(
        "Pemberitahuan",
        style: GoogleFonts.sourceSansPro(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: typography500,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ItemNotificationWidget(
                faker: faker, mediaQueryWidth: mediaQueryWidth);
          },
        ),
      ),
      bottomSheet: Container(
        height: bodyHeight * 0.08,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, -4), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset(
                "assets/icon/Profile.png",
                width: 26,
              ),
            )
          ]
        )
      )
    );
  }
}