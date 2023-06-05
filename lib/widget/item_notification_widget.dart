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
  bool ispemberitahuan = false;

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
      ],
    );
  }
}
