import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../../service/followthread_service.dart';
import '../../service/thread_service.dart';
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
                  FutureBuilder(
                    future: FollowThreadService().getAllFollowThread(),
                    builder: ((context, snapshot) {
                      var followthread = snapshot.data?.data;
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: followthread?.length,
                          itemBuilder: (context, index) {
                            // return Text(thread?[index].title ?? "");
                            return ThreadContentCustomWidget(
                              faker: faker,
                              threadId: followthread?[index].id ?? 0,
                              name:
                                  followthread?[index].thread?.user?.username !=
                                          ""
                                      ? (followthread?[index]
                                              .thread
                                              ?.user
                                              ?.username ??
                                          "")
                                      : "-",
                              title: followthread?[index].thread?.title ?? "-",
                              contentThread:
                                  followthread?[index].thread?.content ?? "-",
                              mediaWidth: mediaQueryWidth,
                              bodyheight: bodyHeight,
                              imageContent:
                                  followthread?[index].thread?.file ?? "",
                              images:
                                  followthread?[index].thread?.user?.imageUrl ??
                                      "",
                            );
                          },
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
                  ),
                  FutureBuilder(
                  future: ThreadService().getAllThread(),
                  builder: ((context, snapshot) {
                    var thread = snapshot.data?.data;
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: thread?.length,
                        itemBuilder: (context, index) {
                          return ThreadContentCustomWidget(
                            faker: faker,
                            threadId: thread?[index].id ?? 0,
                            name: thread?[index].author.username ?? "",
                            title: thread?[index].title ?? "",
                            contentThread: thread?[index].content ?? "",
                            mediaWidth: mediaQueryWidth,
                            bodyheight: bodyHeight,
                            imageContent: thread?[index].file ?? "",
                            images: thread?[index].author.profil ?? "",
                          );
                        },
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  })),
                ],
              ),
            )
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
}
