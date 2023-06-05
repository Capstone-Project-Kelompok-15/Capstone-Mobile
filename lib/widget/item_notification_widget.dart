import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ItemNotificationWidget extends StatefulWidget {
  final Faker faker;
  final double mediaQueryWidth;

  const ItemNotificationWidget({
    Key? key,
    required this.faker,
    required this.mediaQueryWidth,
  }) : super(key: key);

  @override
  _ItemNotificationWidgetState createState() => _ItemNotificationWidgetState();
}

class _ItemNotificationWidgetState extends State<ItemNotificationWidget> {
  bool iskomentar = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: const EdgeInsets.all(0),
          leading: const CircleAvatar(
            child: Text("W"),
          ),
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.faker.person.name(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(text: " Bagus idenya"),
              ],
            ),
          ),
          subtitle: Text("2 menit yang lalu"),
        ),
        // Padding(
        //   padding: EdgeInsets.only(left: widget.mediaQueryWidth * 0.12),
        //   child: iskomentar == true
        //       ? Container(
        //           child: Column(
        //             children: [
        //               const ListTile(
        //                 leading: CircleAvatar(
        //                   child: Text("K"),
        //                 ),
        //                 title: Text("nama komentar"),
        //                 subtitle: Text("komentar"),
        //               ),
        //               Align(
        //                 alignment: Alignment.bottomLeft,
        //                 child: TextButton(
        //                   onPressed: () {
        //                     if (iskomentar == true) {
        //                       iskomentar = false;
        //                     }
        //                     setState(() {});
        //                   },
        //                   child: const Text("kecilkan"),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         )
        //       : Align(
        //           alignment: Alignment.centerLeft,
        //           child: TextButton(
        //             onPressed: () {
        //               if (iskomentar == false) {
        //                 iskomentar = true;
        //               }
        //               setState(() {});
        //             },
        //             child: const Text("Lihat balasan"),
        //           ),
        //         ),
        // ),
      ],
    );
  }
}
