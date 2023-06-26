import 'dart:io';

import 'package:capstone_mobile/service/detail_user.dart';

import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UbahProfileScreen extends StatefulWidget {
  final String? id;
  final String? username;
  final String? bio;
  const UbahProfileScreen({
    super.key,
    this.id,
    this.username,
    this.bio,
  });

  @override
  State<UbahProfileScreen> createState() => _UbahProfileScreenState();
}

class _UbahProfileScreenState extends State<UbahProfileScreen> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();
  String? _profileImagePath;
  final TextEditingController _controllerUpdateNama = TextEditingController();
  final TextEditingController _controllerUpdateBio = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controllerUpdateNama.text = widget.username ?? '';
    _controllerUpdateBio.text = widget.bio ?? '';
  }

  void selectPhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        _profileImagePath = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 25),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/icon/left3.png',
                            color: Colors.black,
                            scale: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 14.5,
                        ),
                        Text(
                          'Edit Profile',
                          style: largeBold,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      // onTap: () async {
                      //   await UserService().updatedetailUser(
                      //     username: _controllerUpdateNama.text,
                      //     bio: _controllerUpdateBio.text,
                      //   );
                      //   setState(() {
                      //     _profileImagePath =
                      //         _imageFile?.path; // Update the profile image path
                      //   });
                      // },
                      child: Image.asset(
                        'assets/icon/centang.png',
                        color: primary500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: _imageFile != null
                          ? FileImage(_imageFile!)
                          : (_profileImagePath != null
                                  ? FileImage(File(_profileImagePath!))
                                  : const AssetImage("assets/images/fotodummy.png"))
                              as ImageProvider,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        selectPhoto(ImageSource.gallery);
                      },
                      child: Text(
                        'Ubah Gambar Profile',
                        style: regulerMedium.copyWith(color: primary500),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 29.5,
                ),
                Text(
                  'Username',
                  style: regulerMedium,
                ),
                const SizedBox(
                  height: 19.5,
                ),
                SizedBox(
                  width: 345,
                  height: 38,
                  child: TextField(
                    controller: _controllerUpdateNama,
                    decoration: InputDecoration(
                      hintText: 'e.g., fariswht',
                      hintStyle: regulerReguler,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xffbfbfbf),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19.5,
                ),
                Text(
                  'Bio',
                  style: regulerMedium,
                ),
                const SizedBox(
                  height: 19.5,
                ),
                SizedBox(
                  width: 345,
                  height: 196,
                  child: TextField(
                    controller: _controllerUpdateBio,
                    decoration: InputDecoration(
                      hintText: 'Buat Biomu',
                      hintStyle: regulerReguler,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xffbfbfbf),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                    ),
                    maxLines: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
