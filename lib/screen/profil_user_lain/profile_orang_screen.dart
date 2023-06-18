// import 'package:capstone_mobile/screen/profile/menu_profile.dart';
import 'package:capstone_mobile/screen/profile/postingan_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/diikuti_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/pengikut_tabbar.dart';

import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/widget/circular_tab_indicator.dart';
import 'package:flutter/material.dart';

class ProfileOrangScreen extends StatefulWidget {
  static const routename = "/profileorang";
  const ProfileOrangScreen({Key? key}) : super(key: key);

  @override
  State<ProfileOrangScreen> createState() => _ProfileOrangScreenState();
}

class _ProfileOrangScreenState extends State<ProfileOrangScreen>
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
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - kToolbarHeight - MediaQuery.of(context).padding.top;


    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Joko Santoso',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40), // Spacer
                ],
              ),
            ),
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
                  SizedBox(
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
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              const Text('4'),
                              Text(
                                'Diikuti',
                                style:
                                    smallReguler.copyWith(color: typography600),
                              )
                            ],
                          ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff195FAA),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 90,
                            height: 30,
                            child: Center(
                              child: Text(
                                'Follow',
                                style: smallMedium.copyWith(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(flex: 1),                        
                        GestureDetector(
                          onTap: () {
                            // Handle pesan di sini
                          },
                          child: Image.asset(
                            "assets/icon/Statistics.png",
                            width: 30,
                            height: 30,
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
                        width: 360,
                        height: 55,
                        child: TabBar(
                          controller: _tabController,
                          labelColor: primary500,
                          unselectedLabelColor: const Color(0xff939598),
                          indicator: RectangleTabIndicator(
                            color: primary500,
                            width: 70,
                            height: 4,
                            radius: 3,
                          ),
                          tabs: [
                            Tab(
                              child: Text(
                                'Postingan',
                                style: smallMedium.copyWith(fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Pengikut',
                                style: smallMedium.copyWith(fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Diikuti',
                                style: smallMedium.copyWith(fontSize: 13),
                              ),
                            ),
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
