import 'package:capstone_mobile/screen/login/lupa_password/lupa_password_screen_1.dart';
import 'package:capstone_mobile/screen/register/register_screen.dart';
import 'package:capstone_mobile/service/login_service.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/button.dart';
import 'package:capstone_mobile/widget/input_field.dart';
import 'package:flutter/material.dart';

import '../home_buttomNavigasi_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routename = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obsecureText = true;
  bool akunInvalid = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 92, right: 83, left: 82),
                  child: Container(
                    height: 225,
                    width: 225,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/gk dipakek.png'))),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 200,
                  child: TabBar(
                      indicatorColor: primary500,
                      labelPadding: const EdgeInsets.all(7),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3,
                      tabs: [
                        SizedBox(
                            width: 45,
                            child: Tab(
                                child: Text(
                              "Masuk",
                              style:
                                  regulerMedium.copyWith(color: typography500),
                            ))),
                        SizedBox(
                          width: 81,
                          child: Tab(
                              child: Text(
                            "Daftar Akun",
                            style: regulerMedium.copyWith(color: typography500),
                          )),
                        )
                      ]),
                ),
                Expanded(
                    child: TabBarView(children: [
                  ListView(
                    children: [
                      akunInvalid == false
                          ? InputField(
                              title: "Alamat Email / Nomor Handphone",
                              hintText: "e.g., alexiealexander@gmail.com",
                              controller: _email,
                              validation: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan email/nomor handphone';
                                }
                                return null;
                              },
                            )
                          : InputField(
                              title: "Alamat Email / Nomor Handphone",
                              hintText: "e.g., alexiealexander@gmail.com",
                              error: true,
                              textError:
                                  "Email yang anda masukkan tidak sesuai",
                              controller: _email,
                              validation: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan email/nomor handphone';
                                }
                                return null;
                              },
                            ),
                      const SizedBox(
                        height: 16,
                      ),
                      akunInvalid == false
                          ? InputField(
                              title: "Kata Sandi",
                              controller: _password,
                              obsecureText: _obsecureText,
                              isPassword: true,
                              onTap: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              validation: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan kata sandi';
                                }
                                return null;
                              },
                            )
                          : InputField(
                              title: "Kata Sandi",
                              error: true,
                              textError: "Kata sandi yang anda masukkan salah",
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
                                  return 'Masukkan kata sandi';
                                }
                                return null;
                              },
                            ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: const EdgeInsets.only(right: 25),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(LupaPassword1.routename);
                                },
                                child: Text(
                                  "Lupa Kata Sandi",
                                  style:
                                      regulerMedium.copyWith(color: primary500),
                                )),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 138, vertical: 24),
                        child: Button(
                            buttonText: "Masuk",
                            width: 111,
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                int x = await Login()
                                    .loginUser(_email.text, _password.text);
                                setState(() {
                                  if (x == 1) {
                                    Navigator.of(context).pushNamed(
                                        HomeButtonmNavigasiScreen.routename);
                                    final snackBar = showLoginDialog();
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  } else {
                                    akunInvalid = true;
                                  }
                                });
                              }
                            }),
                      )
                    ],
                  ),
                  const RegisterScreen()
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  SnackBar showLoginDialog() {
    return SnackBar(
      content: Container(
        height: 47,
        decoration: BoxDecoration(
            color: primary500, borderRadius: BorderRadius.circular(24)),
        child: Center(
            child: Text(
          "Login Berhasil",
          style: smallBold.copyWith(color: Colors.white),
        )),
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
