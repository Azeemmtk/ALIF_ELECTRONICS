import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Row(
          children: [
            Icon(Icons.menu_outlined),
            SizedBox(width: 30,),
            Icon(Icons.location_on_outlined),
            SizedBox(width: 5,),
            Text("New Jersey",style: TextStyle(fontSize: 20),),
            SizedBox(width: 75,),
            Icon((Icons.notifications_none))
          ],
        ),
      ),
    );
  }
}
