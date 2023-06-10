import 'package:capstone_mobile/screen/private_message/private_message_screen.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static const routename = "/MessageScreen";
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Pesan",
          style: largeBoldBlack,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PrivateMessageScreen.routename);
              },
              child: ListTile(
                leading: const CircleAvatar(
                  child: Text("T"),
                ),
                title: Text(
                  "bagus",
                  style: smallReguler,
                ),
                subtitle: Text(
                  "Yo sup",
                  style: smallReguler,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
