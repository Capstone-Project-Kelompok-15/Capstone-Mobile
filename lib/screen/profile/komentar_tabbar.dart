import 'package:capstone_mobile/widget/thread_content_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class KomentarTabBar extends StatelessWidget {
  const KomentarTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 0.5,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Color(0xffAAAAAA),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
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
            ),
          )
        ],
      ),
    );
  }
}
