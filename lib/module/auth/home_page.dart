import 'package:alif_electronics/widgets/custom_text_field.dart';
import 'package:alif_electronics/widgets/custon_container.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom servicecontainer.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                        prefixicon: const Icon(Icons.search_rounded),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Select Service"),
                      const SizedBox(
                        width: 213,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("See all",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5)))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          custom_container(
                            image: "asset/image/pc.png",
                            text: "Tv Repair",
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          custom_container(
                              image: "asset/image/pyc.png", text: "Selling"),
                          const SizedBox(
                            width: 20,
                          ),
                          custom_container(
                              image: "asset/image/xl.png", text: "Service")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text("Select Service"),
                          const SizedBox(
                            width: 213,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text("See all",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5)))),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(10),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 360,
                              //color: Colors.blue,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.amber)),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 3.5,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 3.5,
                                      ),
                                      Container(
                                          height: 110,
                                          width: 115,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              "asset/image/repair.png",
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 110,
                                    width: 227,
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Home Repair Service",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text("₹ 15.00 "),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("4.5"),
                                                SizedBox(
                                                  width: 121,
                                                ),
                                                Text(
                                                  "Off 10%",
                                                  //style: TextStyle(color: Colors.black.withOpacity(0.5)),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 120,
                              width: 360,
                              //color: Colors.blue,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.amber)),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 3.5,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 3.5,
                                      ),
                                      Container(
                                          height: 110,
                                          width: 115,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              "asset/image/repair.png",
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 110,
                                    width: 227,
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Home Repair Service",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text("₹ 15.00 "),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("4.5"),
                                                SizedBox(
                                                  width: 121,
                                                ),
                                                Text(
                                                  "Off 10%",
                                                  //style: TextStyle(color: Colors.black.withOpacity(0.5)),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text("Select Service"),
                      const SizedBox(
                        width: 229,
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        custom_repair_containr(
                          image: "asset/image/repair.png",
                          text: "TV Repair",
                          price: "200",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        custom_repair_containr(
                          image: "asset/image/repair.png",
                          text: "TV Repair",
                          price: "200",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        custom_repair_containr(
                          image: "asset/image/repair.png",
                          text: "TV Repair",
                          price: "200",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        custom_repair_containr(
                          image: "asset/image/repair.png",
                          text: "TV Repair",
                          price: "200",
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_outlined),
            label: "note",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: "notification",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "person",
            backgroundColor: Colors.amber,
          )
        ],
      ),
    );
  }
}
