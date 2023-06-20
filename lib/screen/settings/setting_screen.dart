import 'package:capstone_mobile/screen/login/login_screen.dart';
import 'package:capstone_mobile/screen/settings/pengaturan_akun_screen.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  static const routename = "/setting";

  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      iconTheme: IconThemeData(color: typography500),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "Pengaturan",
        style: GoogleFonts.sourceSansPro(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 1.4, // Menggunakan faktor 1.4 untuk line-height 140%
          color: const Color(0xFF2C2C2C),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    return Scaffold(
      appBar: myAppBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 15, 15, 15),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(PengaturanAkunScreen
                      .routename); // Aksi yang ingin Anda lakukan saat diklik pada "Pengaturan Akun"
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icon/Settings.png",
                      width: 20,
                      height: 20,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Pengaturan Akun",
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height:
                            1.4, // Menggunakan faktor 1.4 untuk line-height 140%
                        color: Color(0xFF222628),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 15, 15, 15),
              child: Text(
                "Masuk",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  height: 1.4, // Menggunakan faktor 1.4 untuk line-height 140%
                  color: Color(0xFF222628),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 15, 15, 15),
              child: Text(
                "Pindah Akun",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 1.4, // Menggunakan faktor 1.4 untuk line-height 140%
                  color: Color(0xFF195FAA),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 15, 15, 15),
              child: Text(
                "Tambah Akun",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 1.4, // Menggunakan faktor 1.4 untuk line-height 140%
                  color: Color(0xFF195FAA),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 15, 15, 15),
              child: GestureDetector(
                onTap: () {
                  showPlatformDialog(
                    context: context,
                    builder: (context) => BasicDialogAlert(
                      title: const Text("Apakah anda yakin?"),
                      content: const Text(
                          "Apakah anda yakin ingin keluar dari aplikasi Squad Space."),
                      actions: <Widget>[
                        BasicDialogAction(
                          title: const Text("Ya"),
                          onPressed: () {
                            Navigator.pushNamed(context, LoginScreen.routename);
                            removeToken();
                          },
                        ),
                        BasicDialogAction(
                          title: const Text("Batal"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  "Keluar",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height:
                        1.4, // Menggunakan faktor 1.4 untuk line-height 140%
                    color: Color(0xFFB92B27),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
