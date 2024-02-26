import 'package:alif_electronics/module/auth/login_page.dart';
import 'package:alif_electronics/widgets/custom_button.dart';
import 'package:alif_electronics/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Customer_reg extends StatelessWidget {
  Customer_reg({super.key});

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => loginpage()));
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text("SignUp",
                      style: TextStyle(
                        fontFamily: 'circular_bold',
                        fontSize: 30,
                      )),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              CustomTextField(
                  controller: _nameController, hintText: "Enter name"),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _phoneController, hintText: "Enter phone"),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _emailController, hintText: "Enter email"),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _passwordController, hintText: "Enter password"),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _phoneController, hintText: "Confirm password"),
              const SizedBox(height: 20,),
              Center(
                child: SizedBox(width: 300,
                    child: custom_button()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
