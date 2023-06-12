import 'package:flutter/material.dart';

import '../style/color_style.dart';
import '../style/font_style.dart';

class InputField extends StatelessWidget {
  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final bool error;
  final String? textError;
  final bool isPassword;
  final bool obsecureText;
  final Function()? onTap;
  final Function(String)? onChanged;

  const InputField(
      {super.key,
      required this.title,
      this.hintText,
      this.controller,
      this.error = false,
      this.textError,
      this.isPassword = false,
      this.obsecureText = false,
      this.onTap,
      this.onChanged});

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
                onChanged: onChanged,
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: regulerReguler,
                    suffixIcon: isPassword == true
                        ? GestureDetector(
                            child: Icon(obsecureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onTap: onTap,
                          )
                        : Container(
                            width: 1,
                          ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          width: 1.5,
                          color: error == false
                              ? typography300.withOpacity(0.5)
                              : danger500),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: primary500, width: 1.5),
                    )),
                controller: controller,
                obscureText: obsecureText,
              ),
              error == true
                  ? Text(
                      textError!,
                      style: regulerReguler.copyWith(color: danger500),
                    )
                  : Container(),
            ],
          ),
        )
      ],
    );
  }
}
