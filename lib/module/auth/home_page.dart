import 'package:alif_electronics/widgets/custom_text_field.dart';
import 'package:alif_electronics/widgets/custon_container.dart';
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
      body:
      SingleChildScrollView(
      child:Column(
        children: [
          Container(
            height: 230,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "asset/image/add.png",
                      width: 200,
                      height: 130,
                    ),
                  ),
                  //  child: Image.asset(
                  //    "asset/image/add.png",
                  //    width: 200,
                  //    height: 130,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Select Service"),
                    SizedBox(
                      width: 229,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(children: [
                  Row(
                    children: [
                      custom_container(image: "asset/image/pc.png",text: "Tv Repair",),
                      SizedBox(width: 20,),
                      custom_container(image: "asset/image/crome.png", text: "Selling")
                    ],
                  )
                ],)
              ],
            ),
          )
        ],
      ),
      ));
  }
}

