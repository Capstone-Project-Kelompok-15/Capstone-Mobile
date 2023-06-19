// import 'package:capstone_mobile/screen/pemberitahuan/pemberitahuan_screen.dart';
import 'package:capstone_mobile/screen/pemberitahuan/pemberitahuan_screen.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class ButtonNotificationWidget extends StatefulWidget {
<<<<<<< HEAD
  const ButtonNotificationWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonNotificationWidgetState createState() =>
      _ButtonNotificationWidgetState();
=======
  @override
  _ButtonNotificationWidgetState createState() => _ButtonNotificationWidgetState();
>>>>>>> profile_orang_lain
}

class _ButtonNotificationWidgetState extends State<ButtonNotificationWidget> {
  final Faker faker = Faker();
  bool ispemberitahuan = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PemberitahuanScreen.routename);
      },
      child: const Icon(
        Icons.notifications,
        size: 30,
      ),
    );
  }

<<<<<<< HEAD
  // ignore: unused_element
=======
>>>>>>> profile_orang_lain
  Widget _buildlPemberitahuanWidget() {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: const EdgeInsets.all(0),
          leading: const CircleAvatar(
            child: Text("D"),
          ),
          title: Text(faker.person.name()),
          subtitle: const Text("Bagus idenya"),
        ),
        Padding(
<<<<<<< HEAD
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.12),
          child: ispemberitahuan
              // ignore: avoid_unnecessary_containers
=======
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.12),
          child: ispemberitahuan
>>>>>>> profile_orang_lain
              ? Container(
                  child: Column(
                    children: [
                      const ListTile(
                        leading: CircleAvatar(
                          child: Text("K"),
                        ),
                        title: Text("nama komentar"),
                        subtitle: Text("komentar"),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              ispemberitahuan = false;
                            });
                          },
                          child: const Text("kecilkan"),
                        ),
                      ),
                    ],
                  ),
                )
              : Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        ispemberitahuan = true;
                      });
                    },
                    child: const Text("Lihat balasan"),
                  ),
                ),
        ),
      ],
    );
  }
}
