import 'package:flutter/material.dart';

import '../style/color_style.dart';
import '../style/font_style.dart';

class InputField extends StatelessWidget {
  final String title;
  final String? hintText;
  final TextEditingController? controller;

  const InputField({super.key, required this.title, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 341,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: regulerMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                cursorColor: primary500,
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: regulerReguler,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: primary500, width: 1.5),
                    )),
                controller: controller,
              )
            ],
          ),
        )
      ],
    );
  }
}
