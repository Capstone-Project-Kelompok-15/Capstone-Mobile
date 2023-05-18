import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class ThreadContentCustom extends StatelessWidget {
  String name;
  String contentThread;
  double? mediaWidth;
  ThreadContentCustom({
    super.key,
    required this.faker,
    required this.name,
    required this.contentThread,
    this.mediaWidth,
  });

  final Faker faker;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            thickness: 2,
            indent: 2,
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            leading: const CircleAvatar(
              child: Text("T"),
            ),
            title: IntrinsicHeight(
              child: Row(
                children: <Widget>[
                  Text(name),
                  // Expanded(child: Divider()),
                  const VerticalDivider(
                    thickness: 1,
                    width: 20,
                    color: Colors.black,
                  ),
                  Image.asset("assets/icon/Follow.png")
                ],
              ),
            ),
            subtitle: Row(
              children: const [
                Text("53 menit "),
                Text("yang lalu,"),
                Text(" Di Konoha"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "UU TENAGA KERJA",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ReadMoreText(
            contentThread,
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Lihat Selengkapnya',
            trimExpandedText: 'kecikan',
            moreStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            lessStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: mediaWidth! * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("berhasil like");
                        },
                        child: Image.asset(
                          "assets/icon/like.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("berhasil chat");
                        },
                        child: Image.asset("assets/icon/chat.png"),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("berhasil send");
                        },
                        child: Image.asset("assets/icon/Send.png"),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("berhasil menu");
                  },
                  child: Image.asset("assets/icon/Menu.png"),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    faker.person.firstName(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text(" dan "),
                  const Text("155"),
                  const Text(" lainnya"),
                ],
              ),
              const Text("4 Komentar"),
            ],
          ),
        ],
      ),
    );
  }
}
