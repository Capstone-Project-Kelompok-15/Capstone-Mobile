// ignore_for_file: unused_import

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemComentarWidget extends StatefulWidget {
  final double mediaQueryWidth;
  String nama;
  String komentar;
  String profil;
  ItemComentarWidget({
    super.key,
    required this.nama,
    required this.komentar,
    required this.profil,
    required this.mediaQueryWidth,
  });

  @override
  State<ItemComentarWidget> createState() => _ItemComentarWidget();
}

class _ItemComentarWidget extends State<ItemComentarWidget> {
  bool iskomentar = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            child: ClipOval(
              child: widget.profil != ""
                  ? Image.network(
                      widget.profil!,
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    )
                  : Image.network(
                      "https://res.cloudinary.com/dwvq529jy/image/upload/v1687364629/Uploads/empty.jpg.jpg",
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
            ),
          ),
          title: Text(widget.nama),
          subtitle: Text(widget.komentar),
        ),
      ],
    );
  }
}
