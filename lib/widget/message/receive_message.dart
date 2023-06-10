import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReceiveMessages extends StatelessWidget {
  String pesan;
  String tanggal;
  ReceiveMessages({super.key, required this.pesan, required this.tanggal});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          child: Text("A"),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Text(
            pesan,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Text(tanggal),
      ],
    );
  }
}
