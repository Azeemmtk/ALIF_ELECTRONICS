import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../../widgets/custom_text_field.dart';

class loginpage extends StatelessWidget {
   loginpage({super.key});

  final _emailCntroller = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(







      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Sign In",
            style: TextStyle(fontFamily: 'circular_bold', fontSize: 30),
          ),
          const SizedBox(
            height: 70,
          ),
          CustomTextField(
            controller: _emailCntroller,
            hintText: "Enter email",
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            controller: _passwordController,
            hintText: "Enter password",
          ),

        ],
      ),
    ));
  }
}
