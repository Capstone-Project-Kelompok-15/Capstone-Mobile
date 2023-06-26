// import 'package:capstone_mobile/model/list_followthread_response.dart';
import 'package:capstone_mobile/screen/home_Thread/create_thread_screen.dart';
import 'package:capstone_mobile/screen/pemberitahuan/pemberitahuan_screen.dart';
import 'package:capstone_mobile/screen/search/search_screen.dart';
import 'package:capstone_mobile/service/thread_service.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/thread_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';


import '../../style/color_style.dart';

class HomeThreadScreen extends StatefulWidget {

  static const routename = "/homeThread";
  HomeThreadScreen({super.key});

  @override
  State<HomeThreadScreen> createState() => _HomeThreadScreenState();
}

class _HomeThreadScreenState extends State<HomeThreadScreen> {
  // ignore: unnecessary_new
  final faker = new Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final myAppBar = AppBar(
      centerTitle: true,
      leading: Image.asset(
        "assets/images/logo.png",
      ),
      title: Container(
        margin: const EdgeInsets.only(top: 5),
        width: 234,
        height: 38,
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
              style: regulerReguler,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari',
                hintStyle: regulerReguler.copyWith(color: typography500)
              ),
              onFieldSubmitted: (value) {
                Navigator.of(context)
                    .pushNamed(SearchScreen.routename, arguments: value);
              },
            ),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(PemberitahuanScreen.routename);
          },
          child: Image.asset(
            "assets/icon/bell.png",
            width: 30,
            height: 30,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottomOpacity: 0,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    // Future refresh()async{

    // }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: myAppBar,
      body: Column(
        children: [
          GestureDetector(
            onTap: () async {
              // ignore: unused_local_variable
              final result = await Navigator.of(context).pushNamed(
                CreateThreadScreen.routename,
              );
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              height: bodyHeight * 0.07,
              width: mediaQueryWidth,
              decoration: const BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: mediaQueryWidth * 0.5,
                      child: Text(
                        "Apa yang anda pikirkan ?",
                        style: smallReguler,
                      )),
                  Row(
                    children: [
                      Image.asset("assets/icon/PlaySquare.png"),
                      SizedBox(
                        width: mediaQueryWidth * 0.02,
                      ),
                      Text(
                        "Post",
                        style: smallMedium,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
                future: ThreadService().getAllThread(),
                builder: ((context, snapshot) {
                  var thread = snapshot.data?.data;
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: thread?.length,
                      itemBuilder: (context, index) {
                        // return Text(thread?[index].title ?? "");
                        return ThreadContentCustomWidget(
                          threadId : thread?[index].id,
                          faker: faker,
                          name: thread?[index].author?.username ?? "",
                          title: thread?[index].title ?? "",
                          contentThread: thread?[index].content ?? "",
                          mediaWidth: mediaQueryWidth,
                          bodyheight: bodyHeight,
                          imageContent: thread?[index].file ?? "",
                          images: Image.asset("assets/images/fotodummy.png"),
                        );
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                })),
          ),
          // )
        ],
      ),
    );
  }
}