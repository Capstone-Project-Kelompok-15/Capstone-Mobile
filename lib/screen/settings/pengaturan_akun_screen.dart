import 'package:capstone_mobile/style/color_style.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PengaturanAkunScreen extends StatefulWidget {
  static const routename = "/pengaturanakun";

  const PengaturanAkunScreen({Key? key}) : super(key: key);

  @override
  State<PengaturanAkunScreen> createState() => _PengaturanAkunScreenState();
}

class _PengaturanAkunScreenState extends State<PengaturanAkunScreen> {
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
        "Pengaturan Akun",
        style: GoogleFonts.sourceSansPro(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: typography500,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.done),
          color: Colors.blue,
          onPressed: () {
            // do something when the button is pressed
          },
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
    return Scaffold(
      appBar: myAppBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(28, 5, 10, 5),
              child: Text(
                "Alamat Email",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 10, 5),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 191, 191, 0.5),
                      width: 1.5,
                    ),
                  ),
                  hintText: 'e.g., fariswht',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(28, 5, 10, 5),
              child: Text(
                "Kata Sandi Lama",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 10, 5),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 191, 191, 0.5),
                      width: 1.5,
                    ),
                  ),
                  hintText: 'Masukkan Kata Sandi Lama',
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(28, 5, 10, 5),
              child: Text(
                "Kata Sandi Baru",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 10, 5),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 191, 191, 0.5),
                      width: 1.5,
                    ),
                  ),
                  hintText: 'Masukkan Kata Sandi Baru',
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(28, 5, 10, 5),
              child: Text(
                "Konfirmasi Kata Sandi",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 10, 5),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(191, 191, 191, 0.5),
                      width: 1.5,
                    ),
                  ),
                  hintText: 'Masukkan Kata Sandi Baru',
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
