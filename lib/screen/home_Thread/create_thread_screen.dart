import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/alert_dialog_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class CreateThreadScreen extends StatefulWidget {
  static const routename = "/createThread";

  const CreateThreadScreen({super.key});

  @override
  State<CreateThreadScreen> createState() => _CreateThreadScreenState();
}

class _CreateThreadScreenState extends State<CreateThreadScreen> {
  void _pickerFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    _openFIle(file);
  }

  void _openFIle(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    String content = "";
    final argumentHeight =
        (ModalRoute.of(context)?.settings.arguments ?? "") as double;

    final mediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    var myAppbar = AppBar(
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
                if (content.isNotEmpty) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialogCustomWidget(
                          bodyHeight: argumentHeight,
                          mediaQueryWidth: mediaQueryWidth,
                          warna: primary500,
                          text: "Komentar telah terkirim",
                        );
                      });
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialogCustomWidget(
                          bodyHeight: argumentHeight,
                          mediaQueryWidth: mediaQueryWidth,
                          warna: danger500,
                          text: "Gagal",
                        );
                      });
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
                    onChanged: (value) {
                      content = value;
                    },

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
                          _pickerFile();
                        },
                        child: Text(
                          "add",
                          style: TextStyle(color: primary500),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
