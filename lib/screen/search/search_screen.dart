// import 'package:faker/faker.dart';
// import 'package:flutter/material.dart';
// import '../../style/font_style.dart';
// import '../../widget/pengikut_widget.dart';
// import '../../widget/thread_content_widget.dart';

// class SearchScreen extends StatelessWidget {
//   static const routename = "/searchScreen";
//   const SearchScreen({super.key});

//   get color => null;

//   @override
//   Widget build(BuildContext context) {
//     final mediaQueryHeight = MediaQuery.of(context).size.height;
//     final mediaQueryWidth = MediaQuery.of(context).size.width;

//     final myAppBar = AppBar(
//       automaticallyImplyLeading: false,
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 100, //
//                   right: 10,
//                 ),
//                 child: Container(
//                   width: 500,
//                   margin: const EdgeInsets.only(top: 5),
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(24),
//                     ),
//                     border: Border.all(color: Colors.black),
//                   ),
//                   child: Center(
//                     child: IntrinsicWidth(
//                       child: TextFormField(
//                         textAlignVertical: TextAlignVertical.center,
//                         style: regulerReguler,
//                         decoration: const InputDecoration(
//                           focusedBorder: InputBorder.none,
//                           enabledBorder: InputBorder.none,
//                           prefixIcon: Icon(Icons.search),
//                           hintText: 'Cari',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       backgroundColor: Colors.white,
//       elevation: 0,
//       bottomOpacity: 0,
//     );

//     final bodyHeight = mediaQueryHeight -
//         myAppBar.preferredSize.height -
//         MediaQuery.of(context).padding.top;

//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: myAppBar,
//         body: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(
//                 right: 150,
//                 left: 20,
//               ),
//               child: const TabBar(
//                 indicatorWeight: 3,
//                 labelColor: Colors.black,
//                 tabs: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 10,
//                       vertical: 10,
//                     ),
//                     child: Text('Semua'),
//                   ),
//                   Padding(
//                     padding:
//                         EdgeInsets.only(top: 10, bottom: 10, left: 3, right: 3),
//                     child: Text('Postingan'),
//                   ),
//                   Padding(
//                     padding:
//                         EdgeInsets.only(top: 10, bottom: 10, left: 3, right: 3),
//                     child: Text('Orang'),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   ListView.builder(
//                     itemCount: 10,
//                     itemBuilder: (context, index) {
//                       return ThreadContentCustomWidget(
//                         images: Image.asset("assets/images/fotodummy.png"),
//                         faker: faker,
//                         name: faker.person.name(),
//                         contentThread: faker.lorem.sentences(7).join(''),
//                         mediaWidth: mediaQueryWidth,
//                         bodyheight: bodyHeight,
//                       );
//                     },
//                   ),
//                   ListView.builder(
//                     itemCount: 10,
//                     itemBuilder: (context, index) {
//                       return ThreadContentCustomWidget(
//                         images: Image.asset("assets/images/fotodummy.png"),
//                         faker: faker,
//                         name: faker.person.name(),
//                         contentThread: faker.lorem.sentences(7).join(''),
//                         mediaWidth: mediaQueryWidth,
//                         bodyheight: bodyHeight,
//                       );
//                     },
//                   ),
//                   ListView.builder(
//                     itemCount: 10,
//                     physics: const ScrollPhysics(),
//                     itemBuilder: (BuildContext context, int index) {
//                       return const PengikutProfile();
//                     },
//                   ),
//                 ],
//               ),
//             )
//             //   Expanded(
//             //   child: ListView.builder(
//             //     itemCount: 10,
//             //     itemBuilder: (context, index) {
//             //       return ThreadContentCustomWidget(
//             //         faker: faker,
//             //         name: faker.person.name(),
//             //         contentThread: faker.lorem.sentences(7).join(''),
//             //         mediaWidth: mediaQueryWidth,
//             //         bodyheight: bodyHeight,
//             //       );
//             //     },
//             //   ),
//             // )
//             // const SizedBox(
//             //   height: 20,
//             //   width: double.infinity,
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
