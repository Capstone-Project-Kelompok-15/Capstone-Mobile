import 'package:capstone_mobile/screen/search/search_all.dart';
import 'package:capstone_mobile/screen/search/search_orang.dart';
import 'package:capstone_mobile/screen/search/search_postingan.dart';
import 'package:capstone_mobile/style/color_style.dart';
import 'package:flutter/material.dart';
import '../../style/font_style.dart';
import '../home_buttomNavigasi_screen.dart';

class SearchScreen extends StatelessWidget {
  static const routename = "/searchScreen";
  const SearchScreen({super.key});

  get color => null;

  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Color(0xFF222628),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomeButtonmNavigasiScreen.routename);
        },
      ),
      title: Container(
        margin: const EdgeInsets.only(top: 11, bottom: 8),
        width: 234,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: IntrinsicWidth(
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              style: regulerReguler,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari',
              ),
              onFieldSubmitted: (value) {
                Navigator.of(context).pushNamed(
                  SearchScreen.routename,
                );
              },
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      bottomOpacity: 0,
      centerTitle: true,
    );

    // final bodyHeight = mediaQueryHeight -
    //     myAppBar.preferredSize.height -
    //     MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppBar,
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                right: 143,
                left: 20,
              ),
              child: TabBar(
                indicatorColor: primary500,
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 9,
                ),
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: typography500,
                tabs: [
                  SizedBox(
                    width: 57,
                    child: Tab(
                      child: Text(
                        "Semua",
                        style: smallMedium,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 72,
                    child: Tab(
                      child: Text(
                        "Postingan",
                        style: smallMedium,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 57,
                    child: Tab(
                      child: Text(
                        "Orang",
                        style: smallMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [SearchAll(), SearchPostingan(), SearchOrang()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
