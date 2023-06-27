import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

import '../../style/color_style.dart';

class SearchOrang extends StatefulWidget {
  const SearchOrang({super.key});

  @override
  State<SearchOrang> createState() => _SearchOrangState();
}
class _SearchOrangState extends State<SearchOrang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
            child: Text(
              "Orang",
              style: regulerBold.copyWith(fontSize: 16, color: typography500),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding:
                      const EdgeInsets.only(bottom: 10, left: 24, right: 24),
                  leading: ClipRRect(
                    child: Image.asset(
                      "assets/images/fotodummy.png",
                      height: 50,
                      width: 49.43,
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    "John Doe",
                    style: smallMedium,
                  ),
                  subtitle: Text(
                    "Universitas Indonesia",
                    style: smallReguler,
                  ),
                  trailing: IconButton(
                      icon: const Image(
                        image: AssetImage('assets/icon/Follow.png'),
                      ),
                      onPressed: () {}),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}