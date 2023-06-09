import 'package:capstone_mobile/service/comment_thread_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/widget/alert_dialog_widget.dart';
import 'package:capstone_mobile/widget/item_komentar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class KomentarScreen extends StatefulWidget {
  static const routename = "/komentarScreen";
  int? idThread;
  KomentarScreen({super.key, this.idThread});

  @override
  State<KomentarScreen> createState() => _KomentarScreenState();
}

class _KomentarScreenState extends State<KomentarScreen> {
  // ignore: unnecessary_new
  String contentKomentar = "";
  // ignore: prefer_final_fields, unused_field
  TextEditingController _comment = TextEditingController();

  // @override
  // void initState() {
  //   // print(widget.idThread!);
  //   // CommentThread().getThreadByID(id: widget.idThread!);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final myAppBar = AppBar(
      iconTheme: IconThemeData(color: typography500),
      title: Text(
        "Komentar",
        style: GoogleFonts.sourceSansPro(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: typography500,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: RefreshIndicator(
          onRefresh: () {
            return CommentThread().getThreadByID(id: widget.idThread!);
          },
          child: FutureBuilder(
            future: CommentThread().getThreadByID(id: widget.idThread!),
            builder: ((context, snapshot) {
              var comment = snapshot.data?.data.comment;
              return ListView.builder(
                itemCount: comment?.length,
                itemBuilder: (context, index) {
                  return ItemComentarWidget(
                    nama: comment?[index].author.username ?? "kosong",
                    komentar: comment?[index].comment ?? "",
                    profil: comment?[index].author.profil ?? "",
                    mediaQueryWidth: mediaQueryWidth,
                  );
                },
              );
            }),
          ),
        ),
      ),
      bottomSheet: Container(
        height: bodyHeight * 0.08,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, -4), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset(
                "assets/icon/Profile.png",
                width: 26,
              ),
            ),
            Center(
              child: Container(
                width: mediaQueryWidth * 0.7,
                // padding: const EdgeInsets.all(2),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: TextFormField(
                  controller: _comment,
                  decoration: const InputDecoration(
                    hintText: "Masukan Komentar...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              // splashRadius: 20,
              onPressed: () {
                if (_comment.text.isNotEmpty) {
                  CommentThread().postComment(
                    threadId: widget.idThread!,
                    comment: _comment.text,
                  );
                  _comment.clear();
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialogCustomWidget(
                          warna: primary500,
                          text: "Komentar telah terkirim",
                        );
                      });

                  setState(() {});
                }
              },
              icon: Image.asset(
                "assets/icon/Send-Right.png",
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
