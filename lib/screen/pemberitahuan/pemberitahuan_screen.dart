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
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      iconTheme: IconThemeData(color: typography500),
      title: Text(
        "Pemberitahuan",
        style: GoogleFonts.sourceSansPro(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: typography500,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    return Scaffold(
      appBar: myAppBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 15, 15),
              child: Text(
                "New",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 16, bottom: 8),
                  child: ItemNotificationWidget(
                    faker: faker,
                    mediaQueryWidth: mediaQueryWidth,
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 15, 15),
              child: Text(
                "Minggu Lalu",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 16, bottom: 8),
                  child: ItemNotificationWidget(
                    faker: faker,
                    mediaQueryWidth: mediaQueryWidth,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}