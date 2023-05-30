import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:capstone_mobile/widget/thread_content_widget.dart';

class BookmarkScreen extends StatelessWidget {
  static const routename = "/bookmark";

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Latar belakang putih
        iconTheme: IconThemeData(color: Colors.black), // Ikon berwarna hitam
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.bookmark),
                  onPressed: null, // Menonaktifkan fungsi klik pada ikon bookmark
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'Bookmark',
          style: TextStyle(color: Colors.black), // Teks berwarna hitam
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ThreadContentCustom(
            faker: faker,
            name: faker.person.name(),
            contentThread: faker.lorem.sentences(7).join(''),
            mediaWidth: mediaQueryWidth,
          );
        },
      ),
    );
  }
}
