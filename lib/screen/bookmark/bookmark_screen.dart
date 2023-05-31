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

    final bodyHeight = mediaQueryHeight - kToolbarHeight - MediaQuery.of(context).padding.top;

    String selectedValue = 'Item 1'; // Nilai terpilih awal

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottomOpacity: 0,
        iconTheme: IconThemeData(color: Colors.black),
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
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end;
        children: [
          DropdownButton(
            value: selectedValue,
            onChanged: (newValue) {
              // Tambahkan logika untuk menangani perubahan nilai dropdown di sini
              // Misalnya, setState() untuk mengubah nilai terpilih dan memperbarui tampilan
              // Contoh:
              // setState(() {
              //   selectedValue = newValue;
              // });
            },
            items: [
              DropdownMenuItem(
                value: 'Item 1',
                child: Text('Item 1'),
              ),
              DropdownMenuItem(
                value: 'Item 2',
                child: Text('Item 2'),
              ),
              // ... tambahkan item dropdown lainnya sesuai kebutuhan
            ],
          ),
          Expanded(
            child: ListView.builder(
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
          ),
        ],
      ),
    );
  }
}
