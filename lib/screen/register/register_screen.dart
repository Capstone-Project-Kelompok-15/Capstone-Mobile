// ignore_for_file: prefer_final_fields
import 'package:capstone_mobile/service/registrasi_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/button.dart';
import 'package:capstone_mobile/widget/input_field.dart';
import 'package:flutter/material.dart';
import '../login/login_screen.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obsecureText = true;
  bool invalidEmail = false;
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            InputField(
              title: "Username",
              hintText: "e.g., fariswht",
              controller: _username,
              validation: (value) {
                if (value == null || value.isEmpty) {
                  return 'Username tidak boleh kosong';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            invalidEmail == false
                ? InputField(
                    title: "Alamat Email / Nomor Handphone",
                    hintText: "e.g., lexliealexander@gmail.com",
                    controller: _email,
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      return null;
                    },
                  )
                : InputField(
                    title: "Alamat Email / Nomor Handphone",
                    hintText: "e.g., lexliealexander@gmail.com",
                    controller: _email,
                    error: true,
                    textError: "Email yang anda masukkan sudah terdaftar",
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
            const SizedBox(
              height: 16,
            ),
            InputField(
              title: "Kata Sandi",
              controller: _password,
              isPassword: true,
              obsecureText: _obsecureText,
              onTap: () {
                setState(() {
                  _obsecureText = !_obsecureText;
                });
              },
              validation: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password tidak boleh kosong';
                } else if (value.length < 6) {
                  return 'Minimal 6 karakter';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            InputField(
              title: "Umur",
              hintText: "e.g., 22",
              controller: _age,
              validation: (value) {
                if (value == null || value.isEmpty) {
                  return 'Umur tidak boleh kosong';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 139, left: 141, top: 24),
              child: Button(
                buttonText: "Daftar",
                width: 110,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    int x = await Registrasi().createUser(
                      username: _username.text,
                      email: _email.text,
                      password: _password.text,
                      age: int.parse(_age.text),
                    );

                    if (x == 1) {
                      setState(() {
                        final snackBar = showRegisterDialog(true);
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.of(context).pushNamed(
                          LoginScreen.routename,
                        );
                      });
                    } else if (x == 2) {
                      setState(() {
                        invalidEmail = true;
                      });
                    } else {
                      setState(() {
                        final snackBar = showRegisterDialog(false);
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }
                  }
                },
              ),
            )
          ],
        ),
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