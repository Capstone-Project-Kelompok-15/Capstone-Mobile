import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/widget/item_komentar_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KomentarScreen extends StatefulWidget {
  static const routename = "/komentarScreen";

  const KomentarScreen({super.key});

  @override
  State<KomentarScreen> createState() => _KomentarScreenState();
}

class _KomentarScreenState extends State<KomentarScreen> {
  // ignore: unnecessary_new
  final faker = new Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: typography500),
        title: Text(
          "Komentar",
          style: GoogleFonts.sourceSansPro(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: typography500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ItemComentarWidget(
                faker: faker, mediaQueryWidth: mediaQueryWidth);
          },
        ),
      ),
    );
  }
}
