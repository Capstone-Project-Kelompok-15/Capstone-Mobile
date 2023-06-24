import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../widget/thread_content_widget.dart';

class SearchPostingan extends StatefulWidget {
  const SearchPostingan({super.key});

  @override
  State<SearchPostingan> createState() => _SearchPostinganState();
}

class _SearchPostinganState extends State<SearchPostingan> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ThreadContentCustomWidget(
            images: Image.asset("assets/images/fotodummy.png"),
            faker: faker,
            name: faker.person.name(),
            contentThread: faker.lorem.sentences(7).join(''),
            mediaWidth: mediaQueryWidth,
            bodyheight: 10,
            title: '',
            imageContent: '',
          );
        },
      ),
    );
  }
}
