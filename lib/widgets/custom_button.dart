import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  const custom_button({
    super.key,
    required this.txt,
    required this.onpress,
  });

  final String txt;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      child:  Text(txt, style: TextStyle(color: Colors.white)),
    );
  }
}
