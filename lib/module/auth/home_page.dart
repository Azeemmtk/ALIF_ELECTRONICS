import 'package:alif_electronics/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  final _serchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Row(
          children: [
            Icon(Icons.menu_outlined),
            SizedBox(
              width: 90,
            ),
            Icon(Icons.location_on_outlined),
            SizedBox(
              width: 5,
            ),
            Text(
              "New Jersey",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 80,
            ),
            Icon((Icons.notifications_none))
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      color: Colors.amber),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    child: CustomTextField(
                      hintText: "Search",
                      filled: true,
                      fillcolor: Colors.white,
                      controller: _serchcontroller,
                      prefixicon: Icon(Icons.search_rounded),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 20,
                    right: 20,
                    child: Image.asset(
                      "asset/image/logo.png",
                      width: 200,
                      height: 150,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
