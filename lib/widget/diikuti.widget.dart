import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class DiikutiProfile extends StatefulWidget {
  final String? name;
  const DiikutiProfile({super.key, required this.name});

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
              child: Image.network(
                "https://res.cloudinary.com/dwvq529jy/image/upload/v1687364629/Uploads/empty.jpg.jpg",
                height: 50,
                width: 49.43,
                fit: BoxFit.fill,
              ),
            ),
            title: Text(
              widget.name ?? '',
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
                                    'assets/icon/Following.png',
                                    color: Colors.black,
                                    scale: 1,
                                  )
                                : Image.asset(
                                    'assets/icon/Follow.png',
                                    color: Colors.black,
                                    scale: 20,
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
