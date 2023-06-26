// ignore_for_file: unused_import, prefer_final_fields, unnecessary_null_comparison

import 'dart:io';

import 'package:capstone_mobile/screen/home_buttomNavigasi_screen.dart';
import 'package:capstone_mobile/service/thread_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/alert_dialog_widget.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';

class CreateThreadScreen extends StatefulWidget {
  static const routename = "/createThread";

  const CreateThreadScreen({super.key});

  @override
  State<CreateThreadScreen> createState() => _CreateThreadScreenState();
}

class _CreateThreadScreenState extends State<CreateThreadScreen> {
  File? imageFile;
  String urlImage = "";
  bool isImage = false;
  TextEditingController _title = TextEditingController();
  TextEditingController _content = TextEditingController();

  Future getImage() async {
    final XFile? images =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (images != null) {
      imageFile = File(images.path);
    }
    // uploadImage();
    final imageupload = await ThreadService().uploadImage(imageFile);
    if (imageupload != null) {
      urlImage = imageupload;
      isImage = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // String content = "";
    // String title = "";
    // ignore: unused_local_variable
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final myAppbar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottomOpacity: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                if (_title.text.isNotEmpty && _content.text.isNotEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialogCustomWidget(
                        warna: primary500,
                        text: "Komentar telah terkirim",
                      );
                    },
                  );
                  ThreadService().postThread(
                    title: _title.text,
                    content: _content.text,
                    imageFile: urlImage,
                  );
                  setState(() {});
                  Navigator.pushReplacementNamed(
                      context, HomeButtonmNavigasiScreen.routename);
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialogCustomWidget(
                        warna: danger500,
                        text: "Gagal",
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary500,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Row(
                children: [
                  Text(
                    "Kirim",
                    style: regulerMedium,
                  ),
                  Image.asset("assets/icon/chevron_right.png")
                ],
              ),
            ),
          ),
        ),
      ],
    );
    // ignore: unused_local_variable
    final bodyHeight = mediaQueryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppbar,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Text(_content),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: typography400),
                  ),
                  child: TextFormField(
                    // onChanged: (value) {
                    //   title = value;
                    // },
                    controller: _title,
                    decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15),
                        hintText: "Title(Opsional)"),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: typography400),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: TextFormField(
                    // onChanged: (value) {
                    //   content = value;
                    // },
                    controller: _content,
                    minLines:
                        15, // any number you need (It works as the rows for the textarea)
                    // keyboardType: TextInputType.multiline,
                    maxLines: 10000,
                    decoration: const InputDecoration(
                      hintText: "Apa yang anda pikirkan ?",
                      contentPadding: EdgeInsets.only(left: 15, top: 20),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon/Image.png",
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Gambar/Video",
                          style: regulerBold,
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        getImage();
                      },
                      child: Text(
                        "add",
                        style: TextStyle(color: primary500),
                      ),
                    ),
                  ],
                ),
                isImage == true
                    ? Image.network(
                        urlImage,
                        width: 150,
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
