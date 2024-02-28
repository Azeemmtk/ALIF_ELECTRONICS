import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.suffixicon, this.prefixicon, this.fillcolor, this.filled});

  final TextEditingController controller;
  final String hintText;
  final Widget? suffixicon;
  final Widget? prefixicon;
  final fillcolor;
  final filled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: filled,
          fillColor: fillcolor,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: CupertinoColors.inactiveGray)),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CupertinoColors.activeBlue),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          suffixIcon: suffixicon,
          prefixIcon: prefixicon,
          hintStyle:
              TextStyle(color: CupertinoColors.inactiveGray.withOpacity(0.5))),
    );
  }
}
