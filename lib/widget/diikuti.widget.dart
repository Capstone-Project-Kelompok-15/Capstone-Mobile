import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class DiikutiProfile extends StatefulWidget {
  const DiikutiProfile({super.key});

  @override
  State<DiikutiProfile> createState() => _DiikutiProfileState();
}

class _DiikutiProfileState extends State<DiikutiProfile> {
  bool isFollowing = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListTile(
            leading: ClipRRect(
              child: Image.asset(
                "assets/images/fotodummy.png",
                height: 50,
                width: 49.43,
                fit: BoxFit.fill,
              ),
            ),
            title: Text(
              "John doe",
              style: smallMedium,
            ),
            trailing: Container(
              color: Colors.transparent,
              height: 40,
              width: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      isFollowing = !isFollowing;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Column(
                          children: [
                            isFollowing == true
                                ? Image.asset(
                                    'assets/icon/Follow.png',
                                    color: Colors.black,
                                    scale: 20,
                                  )
                                : Image.asset(
                                    'assets/icon/Following.png',
                                    color: Colors.black,
                                    scale: 1,
                                  )
                          ],
                        ),
                        Text(
                          isFollowing == true ? 'Unfollow' : 'Follow',
                          style: tinyRegular,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
