import 'dart:ui';

import 'package:alif_electronics/module/auth/customer_reistration.dart';
import 'package:alif_electronics/module/auth/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class loginpage extends StatelessWidget {
  loginpage({super.key});

  final _emailCntroller = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
            child :Padding(
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
                    height: 130,
                  ),
                  Container(
                    child: CustomTextField(
                      controller: _emailCntroller,
                      hintText: "Enter email",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    suffixicon: const Icon(Icons.visibility),
                    controller: _passwordController,
                    hintText: "Enter password",
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget password",
                          style: TextStyle(
                              fontFamily: 'circular_bold',
                              color: Colors.amber,
                              fontSize: 15),
                          textAlign: TextAlign.left,
                        ),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: custom_button(
                        onpress: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => homepage(),
                              ),
                                  (route) => false);
                        },
                        txt: "LOG IN",
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                          "Dont have account ?",
                          style: TextStyle(fontFamily: 'circular_bold', fontSize: 15),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Customer_reg()));
                          },
                          child: const Text("Register",
                              style: TextStyle(color: Colors.amber)))
                    ],
                  ),
                ],
              ),
            )
        )
    );
  }
}
