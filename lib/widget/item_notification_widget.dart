import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ItemNotificationWidget extends StatefulWidget {
  final Faker faker;
  final double mediaQueryWidth;

  const ItemNotificationWidget({
    Key? key,
    required this.faker,
<<<<<<< HEAD
    required this.mediaQueryWidth,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
=======
    required this.mediaQueryWidth, 
  }) : super(key: key);

  @override
>>>>>>> profile_orang_lain
  _ItemNotificationWidgetState createState() => _ItemNotificationWidgetState();
}

class _ItemNotificationWidgetState extends State<ItemNotificationWidget> {
  bool ispemberitahuan = false;

  final List<String> notificationMessages = [
    "menyukai postingan anda",
    "membagikan postingan anda",
    "mengikuti anda",
  ];

  final List<String> notificationTimes = [
    "2 menit yang lalu",
    "1 jam yang lalu",
    "5 jam yang lalu",
    "1 hari yang lalu",
  ];

  int timeIndex = 0;

  @override
<<<<<<< HEAD
  Widget build(BuildContext context) {
    final random = Random();
    final randomMessage =
        notificationMessages[random.nextInt(notificationMessages.length)];
=======
Widget build(BuildContext context) {
    final random = Random();
    final randomMessage = notificationMessages[random.nextInt(notificationMessages.length)];
>>>>>>> profile_orang_lain
    final currentTime = notificationTimes[timeIndex];

    // Increment the index to get the next time in the list
    timeIndex = (timeIndex + 1) % notificationTimes.length;

    final fullName = widget.faker.person.name();
<<<<<<< HEAD
    final firstName =
        fullName.split(' ').first; // Mendapatkan nama depan dari nama lengkap
=======
    final firstName = fullName.split(' ').first; // Mendapatkan nama depan dari nama lengkap
>>>>>>> profile_orang_lain

    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
<<<<<<< HEAD
            // ignore: sort_child_properties_last
            child: Text(
              firstName.substring(
                  0, 1), // Mengambil huruf pertama dari nama depan
              style: const TextStyle(
=======
            child: Text(
              firstName.substring(0, 1), // Mengambil huruf pertama dari nama depan
              style: TextStyle(
>>>>>>> profile_orang_lain
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: fullName,
<<<<<<< HEAD
                  style: const TextStyle(
=======
                  style: TextStyle(
>>>>>>> profile_orang_lain
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: randomMessage,
<<<<<<< HEAD
                  style: const TextStyle(
=======
                  style: TextStyle(
>>>>>>> profile_orang_lain
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          subtitle: Text(
            currentTime,
<<<<<<< HEAD
            style: const TextStyle(
=======
            style: TextStyle(
>>>>>>> profile_orang_lain
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
