import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SendingMessage extends StatelessWidget {
  String pesan;
  String tanggal;
  SendingMessage({super.key, required this.pesan, required this.tanggal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(tanggal),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Text(
            pesan,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
