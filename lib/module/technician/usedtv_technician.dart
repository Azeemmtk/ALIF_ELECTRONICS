import 'package:flutter/material.dart';

class usedtv_technician extends StatelessWidget {
  usedtv_technician({super.key});

  List<String> name = ['a', 'b'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                  height: 90,
                  width: 500,
                  color: Colors.blue,
                  child: Text(name[index])),
            ),
          );
        },
      ),
    );
  }
}
