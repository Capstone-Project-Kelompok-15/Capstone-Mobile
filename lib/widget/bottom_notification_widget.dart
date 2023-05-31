import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class ButtonNotificationWidget extends StatefulWidget {
  @override
  _ButtonNotificationWidgetState createState() => _ButtonNotificationWidgetState();
}

class _ButtonNotificationWidgetState extends State<ButtonNotificationWidget> {
  final Faker faker = Faker();
  bool isKomentar = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Navigator.of(context).pushNamed(PemberitahuanScreen.routename); {
        setState(() {
          isKomentar = !isKomentar;
        });
      },
      child: Icon(
        Icons.,
        size: 30,
      ),
    );
  }

  Widget _buildKomentarWidget() {
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
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.12),
          child: isKomentar
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
                              isKomentar = false;
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
                        isKomentar = true;
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
