import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../../style/font_style.dart';
import '../../widget/thread_content_widget.dart';

class FollowByThread extends StatelessWidget {
  static const routename = "/followThread";
  const FollowByThread({super.key});

  get color => null;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final myAppBar = AppBar(
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: Image.asset(
                  "assets/icon/Follow.png",
                  width: 24,
                  height: 24,
                ),
              ),
              Text(
                'Ikuti',
                style: largeBold.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      bottomOpacity: 0,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: myAppBar,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                right: 150,
                left: 20,
              ),
              child: const TabBar(
                indicatorWeight: 3,
                labelColor: Colors.black,
                tabs: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Text('Postingan'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10, bottom: 10, left: 3, right: 3),
                    child: Text('Pengguna'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
              children: [
                ListView.builder(
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
                ListView.builder(
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
              ],
            ),)
          //   Expanded(
          //   child: ListView.builder(
          //     itemCount: 10,
          //     itemBuilder: (context, index) {
          //       return ThreadContentCustomWidget(
          //         faker: faker,
          //         name: faker.person.name(),
          //         contentThread: faker.lorem.sentences(7).join(''),
          //         mediaWidth: mediaQueryWidth,
          //         bodyheight: bodyHeight,
          //       );
          //     },
          //   ),
          // )
            // const SizedBox(
            //   height: 20,
            //   width: double.infinity,
            // ),
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
