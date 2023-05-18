import 'package:capstone_mobile/widget/thread_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class HomeThreadScreen extends StatelessWidget {
  HomeThreadScreen({super.key});
  // ignore: unnecessary_new
  final faker = new Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final myAppBar = AppBar(
      leading: Image.asset(
        "assets/images/logo.png",
      ),
      title: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: IntrinsicWidth(
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari',
              ),
            ),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/icon/bell.png",
            color: Colors.black,
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottomOpacity: 0,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppBar,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: bodyHeight * 0.08,
            width: mediaQueryWidth,
            decoration: const BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              // border: Border.all(color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: mediaQueryWidth * 0.5,
                    child: const Text("Apa yang anda pikirkan ?")),
                Row(
                  children: [
                    Image.asset("assets/icon/PlaySquare.png"),
                    SizedBox(
                      width: mediaQueryWidth * 0.02,
                    ),
                    Text(
                      "Post",
                      style: TextStyle(fontSize: mediaQueryWidth * 0.04),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ThreadContentCustom(
                  faker: faker,
                  name: faker.person.name(),
                  contentThread: faker.lorem.sentences(3).join(''),
                  mediaWidth: mediaQueryWidth,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
