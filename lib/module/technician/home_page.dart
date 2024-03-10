import 'package:flutter/material.dart';

import '../../widgets/Custom_Card.dart';

class home_technician extends StatelessWidget {
  const home_technician({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Row(
          children: [
            Icon(Icons.menu_outlined),
            SizedBox(
              width: 89,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "TECHNICIAN",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 80,
            ),
            Icon((Icons.notifications_none))
          ],
        ),
      ),
      body: const Column(children: [
        Custom_Card(
          image: "asset/image/used tv.png",
          text: "USED TV'S",
        ),
        Custom_Card(
          image: "asset/image/complaint.png",
          text: "COMPLAINTS",
        ),
        Custom_Card(
          image: "asset/image/rare parts.png",
          text: "RARE PARTS",
        ),
      ]),
    );
  }
}
