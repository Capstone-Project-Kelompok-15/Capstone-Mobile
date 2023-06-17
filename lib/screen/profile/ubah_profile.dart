import 'dart:io';

import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UbahProfileScreen extends StatefulWidget {
  const UbahProfileScreen({super.key});

  @override
  State<UbahProfileScreen> createState() => _UbahProfileScreenState();
}

class _UbahProfileScreenState extends State<UbahProfileScreen> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  void selectPhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
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
                    _imageFile == null
                        ? const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              "assets/images/fotodummy.png",
                            ),
                          )
                        : CircleAvatar(
                            radius: 50,
                            backgroundImage: FileImage(
                              File(_imageFile?.path ?? ''),
                            ),
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
                Container(
                  width: 345,
                  height: 38,
                  child: TextField(
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
                Container(
                  width: 345,
                  height: 196,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                          'Buat Biomu                                                         0/50',
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
