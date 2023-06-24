import 'package:capstone_mobile/service/detail_user.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/thread_content_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PostinganTabBar extends StatefulWidget {
  const PostinganTabBar({super.key});

  @override
  State<PostinganTabBar> createState() => _PostinganTabBarState();
}

class _PostinganTabBarState extends State<PostinganTabBar> {
  @override
  Widget build(BuildContext context) {
    List<String> status = ['Postingan Terbaru', 'Terakhir Dilihat'];
    String? selectedStatus = status.first;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  child: DropdownButton<String>(
                    underline: Container(),
                    value: selectedStatus,
                    items: status.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: smallMedium,
                          ));
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedStatus = value!;
                      });
                    },
                  ),
                )
                // Text(
                //   'Postingan Baru',
                //   style: smallMedium,
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // GestureDetector(
                //   onTap: () {},
                //   child: Image.asset(
                //     "assets/icon/tandapanah.png",
                //     color: Colors.black,
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: const Color(0xffAAAAAA),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: FutureBuilder(
                future: UserService().getdetailUser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasData) {
                    var posting = snapshot.data?.user;
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: posting?.length,
                      itemBuilder: (context, index) {
                        var threads = posting?[index].threads;
                        return Column(
                          children: threads?.map((thread) {
                                return ThreadContentCustomWidget(
                                  images: Image.asset(
                                      "assets/images/fotodummy.png"),
                                  faker: faker,
                                  name: posting?[index].username ?? '',
                                  contentThread: thread.content.toString(),
                                  title: thread.title ?? '',
                                  mediaWidth: mediaQueryWidth,
                                  bodyheight: (threads.length).toDouble(),
                                );
                              }).toList() ??
                              [],
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
