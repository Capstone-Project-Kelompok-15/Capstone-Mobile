import 'package:capstone_mobile/widget/pengikut_widget.dart';
import 'package:flutter/material.dart';

class PengikutTabBar extends StatefulWidget {
  const PengikutTabBar({super.key});

  @override
  State<PengikutTabBar> createState() => _PengikutTabBarState();
}

class _PengikutTabBarState extends State<PengikutTabBar> {
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
              return PengikutProfile();
            },
          ),
        ),
      ],
    );
  }
}
