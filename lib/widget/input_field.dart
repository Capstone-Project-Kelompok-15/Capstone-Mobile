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
  final String? Function(String?)? validation;

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
      this.onChanged,
      this.validation});

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
                            // ignore: sort_child_properties_last
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
                      borderSide: const BorderSide(
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: error == false
                              ? typography300.withOpacity(0.5)
                              : danger500,
                          width: 1.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: primary500, width: 1.5),
                    ),
                    errorStyle: regulerReguler.copyWith(color: danger500),
                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: danger500, width: 1.5))
                    ),
                controller: controller,
                obscureText: obsecureText,
                validator: validation,
              ),
              const SizedBox(height: 8,),
              error == true
                  ? Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                        textError!,
                        style: regulerReguler.copyWith(color: danger500),
                      ),
                  )
                  : Container(),
            ],
          ),
        )
      ],
    );
  }
}