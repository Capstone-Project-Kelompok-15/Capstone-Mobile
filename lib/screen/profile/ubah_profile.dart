import 'dart:io';

// import 'package:capstone_mobile/service/detail_user.dart';

import 'package:capstone_mobile/model/detail_user_response.dart';
import 'package:capstone_mobile/model/update_detail_user_response.dart';
import 'package:capstone_mobile/service/detail_user.dart';
import 'package:capstone_mobile/service/thread_service.dart';
import 'package:capstone_mobile/service/update_image_service.dart';
import 'package:capstone_mobile/service/update_user_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class UbahProfileScreen extends StatefulWidget {
  final String? id;
  final String? username;
  final String? bio;
  final File? imageUrl;

  const UbahProfileScreen({
    super.key,
    this.id,
    this.username,
    this.bio,
    this.imageUrl,
  });

  @override
  State<UbahProfileScreen> createState() => _UbahProfileScreenState();
}

class _UbahProfileScreenState extends State<UbahProfileScreen> {
  File? imageFile;
  String urlImage = "";
  bool isImage = false;

  final TextEditingController _controllerUpdateNama = TextEditingController();
  final TextEditingController _controllerUpdateBio = TextEditingController();

  @override
  void initState() {
    super.initState();
    UpdateUser().updateUser;
    _controllerUpdateNama.text = widget.username ?? '';
    _controllerUpdateBio.text = widget.bio ?? '';
  }

  Future getImage() async {
    final XFile? images =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (images != null) {
      imageFile = File(images.path);
    }
    // uploadImage();
    final imageupload = await UpdateUser().uploadImage(imageFile);
    // ignore: unnecessary_null_comparison
    if (imageupload != null) {
      urlImage = imageupload;
      isImage = true;
    }

    setState(() {});
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
                        onTap: () async {
                          Navigator.pop(context);
                          await UpdateUser().updateUser(
                            _controllerUpdateNama.text,
                            _controllerUpdateBio.text,
                            urlImage,
                          );
                        },
                        child: Image.asset(
                          'assets/icon/centang.png',
                          color: primary500,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FutureBuilder(
                        future: UserService().getdetailUser(),
                        builder: (context, snapshot) {
                          final user = snapshot.data?.data;
                          return CircleAvatar(
                              radius: 50,
                              backgroundImage: urlImage.isNotEmpty
                                  ? NetworkImage(urlImage) as ImageProvider
                                  : NetworkImage(user?.imageUrl ?? ''));
                        }),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        getImage();
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
