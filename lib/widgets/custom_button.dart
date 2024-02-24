import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  const custom_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      child:
      const Text("LOG IN", style: TextStyle(color: Colors.white)),
    );
  }
}
