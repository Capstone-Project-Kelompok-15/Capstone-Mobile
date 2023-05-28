import 'package:capstone_mobile/screen/register/register_screen.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/button.dart';
import 'package:capstone_mobile/widget/input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
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
                            style: regulerMedium.copyWith(color: typography500),
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
                    InputField(
                      title: "Alamat Email / Nomor Handphone",
                      hintText: "e.g., alexiealexander@gmail.com",
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InputField(
                      title: "Kata Sandi",
                      controller: passwordController,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: const EdgeInsets.only(right: 25),
                          child: TextButton(
                              onPressed: () {},
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
                          buttonText: "Masuk", width: 111, onPressed: () {}),
                    )
                  ],
                ),
                const RegisterScreen()
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
