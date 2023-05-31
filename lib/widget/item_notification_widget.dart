import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ItemNotificationWidget extends StatefulWidget {
  final Faker faker;
  final double mediaQueryWidth;

  const ItemNotificationWidget({
    super.key,
    required this.faker,
    required this.mediaQueryWidth,
  });

  @override
  State<ItemNotificationWidget> createState() => _ItemNotificationWidget();
}

class _ItemNotificationWidget extends State<ItemNotificationWidget> {
  bool iskomentar = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: const EdgeInsets.all(0),
          leading: const CircleAvatar(
            child: Text("D"),
          ),
          title: Text(widget.faker.person.name()),
          subtitle: const Text("Bagus idenya"),
        ),
        Padding(
            padding: EdgeInsets.only(left: widget.mediaQueryWidth * 0.12),
            child: iskomentar == true
                // ignore: avoid_unnecessary_containers
                ? Container(
                    child: Column(
                      children: [
                        const ListTile(
                          leading: CircleAvatar(
                            child: Text("K"),
                          ),
                          title: Text("nama komentar"),
                          subtitle: Text("komentar"),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: TextButton(
                              onPressed: () {
                                if (iskomentar == true) {
                                  iskomentar = false;
                                }
                                setState(() {});
                              },
                              child: const Text("kecilkan")),
                        ),
                      ],
                    ),
                  )
                : Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        if (iskomentar == false) {
                          iskomentar = true;
                        }
                        setState(() {});
                      },
                      child: const Text("Lihat balasan"),
                    ),
                  )

            // child: ListTile(
            //   horizontalTitleGap: 0,
            //   contentPadding: const EdgeInsets.all(0),
            //   leading: const CircleAvatar(
            //     radius: 15,
            //     child: Text("K"),
            //   ),
            //   title: Text(
            //     faker.person.name(),
            //     style: smallMedium,
            //   ),
            //   subtitle: Text(
            //     "Bagus idenya",
            //     style: smallReguler,
            //   ),
            // ),
            ),
      ],
    );
  }
}
