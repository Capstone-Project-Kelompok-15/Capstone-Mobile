import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:capstone_mobile/widget/thread_content_widget.dart';


class BookmarkScreen extends StatelessWidget {
  static const routename = "/bookmark";

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - kToolbarHeight -
        // AppBar.preferredSize.height - 
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        backgroundColor: Colors.transparent, 
        elevation: 0,// Latar belakang putih
        bottomOpacity: 0,
        iconTheme: IconThemeData(color: Colors.black), // Ikon berwarna hitam
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
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
          return ThreadContentCustomWidget(
            faker: faker,
            name: faker.person.name(),
            contentThread: faker.lorem.sentences(7).join(''),
            mediaWidth: mediaQueryWidth,
            bodyheight: bodyHeight,
          );
        },
      ),
    );
  }
}
