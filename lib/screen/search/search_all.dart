import 'package:capstone_mobile/service/search_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../../widget/thread_content_widget.dart';

class SearchAll extends StatefulWidget {
  const SearchAll({super.key});
  @override
  State<SearchAll> createState() => _SearchAllState();
}
class _SearchAllState extends State<SearchAll> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final argumentsString = arguments.toString();
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
            FutureBuilder(
                future: Search().searchTitle(argumentsString),
                builder: (context, snapshot) {
                  var thread = snapshot.data?.thread;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator(color: primary500,));
                  }

                  if (thread!.isEmpty) {
                    return Center(child: Text("Tidak ada postingan", style: regulerReguler.copyWith(color: typography500),),);
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: thread.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ThreadContentCustomWidget(
                        images: Image.asset("assets/images/fotodummy.png"),
                        faker: faker,
                        name: thread[index].user!.username ?? "",
                        contentThread: thread[index].content ?? "",
                        mediaWidth: mediaQueryWidth,
                        bodyheight: 5,
                        title: thread[index].title ?? "",
                        imageContent: thread[index].file ?? "",
                      );
                    },
                  );
                }),
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