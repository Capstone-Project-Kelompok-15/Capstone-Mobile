import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KomentarScreen extends StatelessWidget {
  static const routename = "/komentarScreen";
  KomentarScreen({super.key});
  final faker = new Faker();

  @override
  Widget build(BuildContext context) {
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
            return ListTile(
              horizontalTitleGap: 20,
              contentPadding: const EdgeInsets.all(0),
              leading: const CircleAvatar(
                child: Text("D"),
              ),
              title: Text(faker.person.name()),
              subtitle: const Text("Bagus idenya"),
            );
          },
        ),
      ),
    );
  }
}
