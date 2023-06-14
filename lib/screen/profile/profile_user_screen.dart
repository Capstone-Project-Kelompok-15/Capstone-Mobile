import 'package:capstone_mobile/screen/profile/menu_profile.dart';
import 'package:capstone_mobile/screen/profile/postingan_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/diikuti_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/komentar_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/pengikut_tabbar.dart';
import 'package:capstone_mobile/screen/profile/ubah_profile.dart';

import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/circular_tab_indicator.dart';
import 'package:flutter/material.dart';

class ProfileUserScreen extends StatefulWidget {
  const ProfileUserScreen({super.key});

  @override
  State<ProfileUserScreen> createState() => _ProfileUserScreenState();
}

class _ProfileUserScreenState extends State<ProfileUserScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'fariswht',
              style: largeMedium.copyWith(color: typography500),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                "assets/icon/Message.png",
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuProfile(),
                  ),
                );
              },
              child: Image.asset(
                "assets/icon/Menu.png",
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: mediaQueryWidth,
              margin: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/images/fotodummy.png",
                      height: 89.0,
                      width: 89.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    height: 40,
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text('1,132'),
                            Text(
                              'Postingan',
                              style:
                                  smallReguler.copyWith(color: typography600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text('60K'),
                            Text(
                              'Pengikut',
                              style:
                                  smallReguler.copyWith(color: typography600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text('4'),
                            Text(
                              'Diikuti',
                              style:
                                  smallReguler.copyWith(color: typography600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    '"Minimal Maximal"',
                    style: regulerReguler,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 40,
                    width: 165,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UbahProfileScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 90,
                            height: 30,
                            child: Center(
                              child: Text(
                                'Ubah Profil',
                                style: smallMedium.copyWith(
                                    color: const Color(0xff636466)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.transparent,
                        width: 350,
                        height: 55,
                        child: TabBar(
                          controller: _tabController,
                          labelColor: primary500,
                          unselectedLabelColor: const Color(0xff939598),
                          indicator: RectangleTabIndicator(
                              color: primary500,
                              width: 60,
                              height: 4,
                              radius: 3),
                          tabs: [
                            Tab(
                                child: Text(
                              'Postingan',
                              style: smallMedium.copyWith(fontSize: 13),
                            )),
                            Tab(
                                child: Text(
                              'Komentar',
                              style: smallMedium.copyWith(fontSize: 13),
                            )),
                            Tab(
                                child: Text(
                              'Pengikut',
                              style: smallMedium.copyWith(fontSize: 13),
                            )),
                            Tab(
                                child: Text(
                              'Diikuti',
                              style: smallMedium.copyWith(fontSize: 13),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: const Color(0xffAAAAAA),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PostinganTabBar(),
                  KomentarTabBar(),
                  PengikutTabBar(),
                  DiikutiTabbar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
