import 'package:flutter/material.dart';

class custom_container extends StatelessWidget {
   custom_container({
    super.key,required this.image,required this.text,
  });

  final image;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 95,
      //color: Colors.black.withOpacity(0.1),
      child: Column(
        children: [
          Image.asset(image,height: 70,width: 70,),
          SizedBox(height: 0,),
          Text(text,style: TextStyle(color: Colors.black.withOpacity(0.6)),)
        ],
      ),
    );
  }
}
