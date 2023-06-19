<<<<<<< HEAD
// ignore_for_file: unused_field

=======
>>>>>>> profile_orang_lain
import 'package:capstone_mobile/style/font_style.dart';
import 'package:flutter/material.dart';

class FaqDropDown extends StatefulWidget {
  const FaqDropDown({super.key});

  @override
  State<FaqDropDown> createState() => _FaqDropDownState();
}

class _FaqDropDownState extends State<FaqDropDown> {
<<<<<<< HEAD
  // ignore: prefer_final_fields
=======
>>>>>>> profile_orang_lain
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
<<<<<<< HEAD
              color: const Color(0xffBFBFBF),
=======
              color: Color(0xffBFBFBF),
>>>>>>> profile_orang_lain
            ),
          ),
          height: 70,
          width: 342,
          child: ExpansionTile(
            title: Text(
              'Batasan Ukuran File',
              style: regulerBold,
            ),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
<<<<<<< HEAD
                    color: const Color(0xffBFBFBF),
=======
                    color: Color(0xffBFBFBF),
>>>>>>> profile_orang_lain
                  ),
                ),
                height: 80,
                width: 342,
<<<<<<< HEAD
                child: const ListTile(
=======
                child: ListTile(
>>>>>>> profile_orang_lain
                  title: Text('This is tile number 1'),
                ),
              ),
            ],
          ),
        ),
        // ExpansionTile(
        //   title: const Text('ExpansionTile 2'),
        //   subtitle: const Text('Custom expansion arrow icon'),
        //   trailing: Icon(
        //     _customTileExpanded
        //         ? Icons.arrow_drop_down_circle
        //         : Icons.arrow_drop_down,
        //   ),
        //   children: const <Widget>[
        //     ListTile(title: Text('This is tile number 2')),
        //   ],
        //   onExpansionChanged: (bool expanded) {
        //     setState(() {
        //       _customTileExpanded = expanded;
        //     });
        //   },
        // ),
        // const ExpansionTile(
        //   title: Text('ExpansionTile 3'),
        //   subtitle: Text('Leading expansion arrow icon'),
        //   controlAffinity: ListTileControlAffinity.leading,
        //   children: <Widget>[
        //     ListTile(title: Text('This is tile number 3')),
        //   ],
        // ),
      ],
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> profile_orang_lain
