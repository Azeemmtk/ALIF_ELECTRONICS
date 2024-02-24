import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.suffixicon});

  final TextEditingController controller;
  final String hintText;
  final Widget? suffixicon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(color: CupertinoColors.inactiveGray)),
          hintText: hintText,
          suffixIcon: suffixicon,
          hintStyle:
              TextStyle(color: CupertinoColors.inactiveGray.withOpacity(0.5))),
    );
  }
}
