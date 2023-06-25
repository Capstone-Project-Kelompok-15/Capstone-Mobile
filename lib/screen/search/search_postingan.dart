import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../service/search_service.dart';
import '../../style/color_style.dart';
import '../../style/font_style.dart';
import '../../widget/thread_content_widget.dart';

class SearchPostingan extends StatefulWidget {
  final String argument;
  const SearchPostingan({super.key, required this.argument});

  @override
  State<SearchPostingan> createState() => _SearchPostinganState();
}

class _SearchPostinganState extends State<SearchPostingan> {
  @override
  Widget build(BuildContext context) {
    final String title = widget.argument;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
            child: Text(
              "Postingan",
              style: regulerBold.copyWith(fontSize: 16, color: typography500),
            ),
          ),
          FutureBuilder(
              future: Search().searchTitle(title),
              builder: (context, snapshot) {
                var thread = snapshot.data?.thread;
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: CircularProgressIndicator(
                    color: primary500,
                  ));
                }

                if (thread!.isEmpty) {
                  return Center(
                    child: Text(
                      "Tidak ada postingan",
                      style: regulerReguler.copyWith(color: typography500),
                    ),
                  );
                }

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: thread.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ThreadContentCustomWidget(
                        images: Image.asset("assets/images/fotodummy.png"),
                        faker: faker,
                        name: thread[index].user.username,
                        contentThread: thread[index].content,
                        mediaWidth: mediaQueryWidth,
                        bodyheight: 5,
                        title: thread[index].title,
                        imageContent: thread[index].file,
                      );
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
