import 'package:capstone_mobile/service/registrasi_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/button.dart';
import 'package:capstone_mobile/widget/input_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _username = "";
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InputField(
            title: "Username",
            hintText: "e.g., fariswht",
            onChanged: (value) {
              _username = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          InputField(
            title: "Alamat Email / Nomor Handphone",
            hintText: "e.g., lexliealexander@gmail.com",
            onChanged: (value) {
              _email = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          InputField(
            title: "Kata Sandi",
            onChanged: (value) {
              _password = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          // InputField(
          //   title: "Umur",
          //   hintText: "e.g., 22",
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 139, left: 141, top: 24),
            child: Button(
              buttonText: "Daftar",
              width: 110,
              onPressed: () {
                Registrasi().createUser(
                    username: _username, email: _email, password: _password);
                // final snackBar = showRegisterDialog(true);
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                // Navigator.of(context).pushNamed(
                //   LoginScreen.routename,
                // );
              },
            ),
          )
        ],
      ),
    );
  }

  SnackBar showRegisterDialog(bool success) {
    if (success == true) {
      return SnackBar(
        content: Container(
          height: 47,
          decoration: BoxDecoration(
              color: primary500, borderRadius: BorderRadius.circular(24)),
          child: Center(
              child: Text(
            "Akun Anda Sudah Terdaftar, Silahkan Login",
            style: smallBold.copyWith(color: Colors.white),
          )),
        ),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: Colors.transparent,
      );
    } else {
      return SnackBar(
        content: Container(
          height: 63,
          decoration: BoxDecoration(
              color: primary500, borderRadius: BorderRadius.circular(24)),
          child: Center(
              child: Text(
            "Gagal Mendaftarkan Akun, Silahkan Coba Lagi",
            style: smallBold.copyWith(color: Colors.white),
          )),
        ),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: Colors.transparent,
      );
    }
  }
}
