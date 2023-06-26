import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../../widget/pengikut_widget.dart';
import '../../widget/thread_content_widget.dart';

class SearchAll extends StatefulWidget {
  const SearchAll({super.key});

  @override
  State<SearchAll> createState() => _SearchAllState();
}

class _SearchAllState extends State<SearchAll> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 29),
              child: Text(
                "Orang",
                style: regulerBold.copyWith(fontSize: 16, color: typography500),
              ),
            ),
            listOrang(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
              child: Text(
                "Postingan",
                style: regulerBold.copyWith(fontSize: 16, color: typography500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return ThreadContentCustomWidget(
                  images: "",
                  faker: faker,
                  name: faker.person.name(),
                  contentThread: faker.lorem.sentences(7).join(''),
                  mediaWidth: mediaQueryWidth,
                  bodyheight: 5,
                  title: 'hoy',
                  imageContent: '',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget listOrang() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 5,
    physics: const ScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        contentPadding: const EdgeInsets.only(bottom: 10, left: 24, right: 24),
        leading: ClipRRect(
          child: Image.asset(
            "assets/images/fotodummy.png",
            height: 50,
            width: 49.43,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(
          "John Doe",
          style: smallMedium,
        ),
        subtitle: Text(
          "Universitas Indonesia",
          style: smallReguler,
        ),
        trailing: IconButton(
            icon: const Image(
              image: AssetImage('assets/icon/Follow.png'),
            ),
            onPressed: () {}),
      );
    },
  );
}
