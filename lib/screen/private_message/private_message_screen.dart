import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/message/receive_message.dart';
import 'package:capstone_mobile/widget/message/sending_message.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PrivateMessageScreen extends StatefulWidget {
  static const routename = "/PrivateMessageScreen";
  const PrivateMessageScreen({super.key});

  @override
  State<PrivateMessageScreen> createState() => _PrivateMessageScreenState();
}

class _PrivateMessageScreenState extends State<PrivateMessageScreen> {
  // ignore: unnecessary_new
  final faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          children: [
            const CircleAvatar(
              child: Text("A"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "bagus",
                style: largeBold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ReceiveMessages(
              pesan: "hallo",
              tanggal: "21.20",
            ),
            SendingMessage(
              pesan: "hallo",
              tanggal: "21.00",
            ),
            ReceiveMessages(
              pesan: faker.lorem.sentences(5).join(''),
              tanggal: "20.00",
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, -4), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icon/Image.png",
              width: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(color: Colors.black)),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 16, top: 9, bottom: 9),
                  hintText: "Masukan Pesan",
                  border: InputBorder.none,
                  isDense: true,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icon/Send-Right.png"),
            ),
          ],
        ),
      ),
    );
  }
}
