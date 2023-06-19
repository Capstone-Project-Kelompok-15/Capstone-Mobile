import 'package:capstone_mobile/widget/diikuti.widget.dart';
import 'package:flutter/material.dart';

class DiikutiTabbar extends StatefulWidget {
  const DiikutiTabbar({super.key});

  @override
  State<DiikutiTabbar> createState() => _DiikutiTabbarState();
}

class _DiikutiTabbarState extends State<DiikutiTabbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return const DiikutiProfile();
            },
          ),
        ),
      ],
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
