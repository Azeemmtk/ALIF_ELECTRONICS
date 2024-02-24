
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller, required this.hintText,
  });

  final TextEditingController  controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                  color: CupertinoColors.inactiveGray
              )),
          hintText:hintText,
          suffixIcon: Icon(Icons.visibility),
          hintStyle: TextStyle(color: CupertinoColors.inactiveGray.withOpacity(0.5))
      ),
    );
  }
}
