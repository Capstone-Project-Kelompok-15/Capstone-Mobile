import 'package:capstone_mobile/screen/profile/menu_profile.dart';
import 'package:capstone_mobile/screen/profile/postingan_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/diikuti_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/komentar_tabbar.dart';
import 'package:capstone_mobile/screen/profile/tabbar/pengikut_tabbar.dart';
import 'package:capstone_mobile/screen/profile/ubah_profile.dart';
import 'package:capstone_mobile/service/detail_user.dart';

import 'package:capstone_mobile/style/color_style.dart';
import 'package:capstone_mobile/style/font_style.dart';
import 'package:capstone_mobile/utils/scale._size.dart';
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
        body: FutureBuilder(
          future: UserService().getdetailUser(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              final userDetails = snapshot.data?.data;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          userDetails?.username ?? '',
                          style: largeMedium.copyWith(color: typography500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                "assets/icon/Message.png",
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 24,
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
                                    style: smallReguler.copyWith(
                                        color: typography600),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    userDetails?.follower.toString() ?? '',
                                  ),
                                  Text(
                                    'Pengikut',
                                    style: smallReguler.copyWith(
                                        color: typography600),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Text(
                                      userDetails?.following.toString() ?? '',
                                    ),
                                    Text(
                                      'Diikuti',
                                      style: smallReguler.copyWith(
                                          color: typography600),
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
                          userDetails?.bio ?? '',
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
                                      builder: (context) => UbahProfileScreen(
                                        username: userDetails?.username ?? '',
                                        bio: userDetails?.bio ?? '',
                                      ),
                                    ),
                                  );
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
                              width: 320,
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
                                    style: smallMedium.copyWith(
                                        fontSize: const AdaptiveTextSize()
                                            .getadaptiveTextSize(context, 9)),
                                  )),
                                  Tab(
                                      child: Text(
                                    'Komentar',
                                    style: smallMedium.copyWith(
                                        fontSize: const AdaptiveTextSize()
                                            .getadaptiveTextSize(context, 9)),
                                  )),
                                  Tab(
                                      child: Text(
                                    'Pengikut',
                                    style: smallMedium.copyWith(
                                        fontSize: const AdaptiveTextSize()
                                            .getadaptiveTextSize(context, 9)),
                                  )),
                                  Tab(
                                      child: Text(
                                    'Diikuti',
                                    style: smallMedium.copyWith(
                                        fontSize: const AdaptiveTextSize()
                                            .getadaptiveTextSize(context, 9)),
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
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
