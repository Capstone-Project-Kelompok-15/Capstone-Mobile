// ignore_for_file: non_constant_identifier_names

import 'package:capstone_mobile/service/bookmark_service.dart';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:capstone_mobile/widget/thread_content_widget.dart';

class BookmarkScreen extends StatelessWidget {
  static const routename = "/bookmark";
  final faker = Faker();

  BookmarkScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight =
        mediaQueryHeight - kToolbarHeight - MediaQuery.of(context).padding.top;
    // String selectedValue = 'Item 1'; // Nilai terpilih awal
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: kToolbarHeight,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Bookmark',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Source Sans Pro',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              // DropdownButton<String>(
              //   value: selectedValue,
              //   onChanged: (newValue) {
              //     // Tambahkan logika untuk menangani perubahan nilai dropdown di sini
              //     // Misalnya, setState() untuk mengubah nilai terpilih dan memperbarui tampilan
              //     // Contoh:
              //     // setState(() {
              //     //   selectedValue = newValue;
              //     // });
              //   },
              //   items: [
              //     DropdownMenuItem<String>(
              //       value: 'Item 1',
              //       child: Container(
              //         padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              //         child: Text(
              //           'Postingan Terbaru',
              //           style: TextStyle(
              //             fontFamily: 'Source Sans Pro',
              //             fontWeight: FontWeight.w600,
              //             fontSize: 13,
              //             height: 1.4,
              //             color: Color.fromRGBO(44, 44, 44, 0.75),
              //           ),
              //         ),
              //       ),
              //     ),
              //     DropdownMenuItem<String>(
              //       value: 'Item 2',
              //       child: Container(
              //         padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              //         child: Text(
              //           'Postingan Terlama',
              //           style: TextStyle(
              //             fontFamily: 'Source Sans Pro',
              //             fontWeight: FontWeight.w600,
              //             fontSize: 13,
              //             height: 1.4,
              //             color: Color.fromRGBO(44, 44, 44, 0.75),
              //           ),
              //         ),
              //       ),
              //     ),
              //     // ... tambahkan item dropdown lainnya sesuai kebutuhan
              //   ],
              // ),
            ],
          ),
        ),
        body: FutureBuilder(
          future: BookmarkService().getAllBookmark(),
          builder: ((context, snapshot) {
            var Bookmark = snapshot.data?.data;
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: Bookmark?.length,
                itemBuilder: (context, index) {
                  // return Text(thread?[index].title ?? "");
                  return ThreadContentCustomWidget(
                    faker: faker,
                    name: Bookmark?[index].author?.username != ""
                        ? (Bookmark?[index].author?.username ?? "")
                        : "-",
                    title: Bookmark?[index].title ?? "-",
                    contentThread: Bookmark?[index].content ?? "-",
                    mediaWidth: mediaQueryWidth,
                    bodyheight: bodyHeight,
                    images: "",
                    imageContent: '',
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
        ));
  }
}
