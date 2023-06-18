import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ItemPemberitahuanWidget extends StatefulWidget {
  final Faker faker;
  final double mediaQueryWidth;

  const ItemPemberitahuanWidget({
    Key? key,
    required this.faker,
    required this.mediaQueryWidth, 
  }) : super(key: key);

  @override
  _ItemPemberitahuanWidgetState createState() => _ItemPemberitahuanWidgetState();
}

class _ItemPemberitahuanWidgetState extends State<ItemPemberitahuanWidget> {
  bool ispemberitahuan = false;

  final List<String> notificationMessages = [
    "menyukai postingan anda",
    "membagikan postingan anda",
    "mengikuti anda",
  ];

  final List<String> notificationTimes = [
    "1 Minggu yang lalu",
    "9 Hari yang lalu yang lalu",
    "11 Hari yang lalu",
    "2 Minggu yang lalu",
  ];

  int timeIndex = 0;

  @override
Widget build(BuildContext context) {
    final random = Random();
    final randomMessage = notificationMessages[random.nextInt(notificationMessages.length)];
    final currentTime = notificationTimes[timeIndex];

    // Increment the index to get the next time in the list
    timeIndex = (timeIndex + 1) % notificationTimes.length;

    final fullName = widget.faker.person.name();
    final firstName = fullName.split(' ').first; // Mendapatkan nama depan dari nama lengkap

    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(
              firstName.substring(0, 1), // Mengambil huruf pertama dari nama depan
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: fullName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: randomMessage,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          subtitle: Text(
            currentTime,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}