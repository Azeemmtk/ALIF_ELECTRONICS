import 'dart:io';

import 'package:alif_electronics/widgets/custom_button.dart';
import 'package:alif_electronics/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class add_usedtv extends StatefulWidget {
  add_usedtv({super.key});

  @override
  State<add_usedtv> createState() => _add_usedtvState();
}

class _add_usedtvState extends State<add_usedtv> {
  final _modelname = TextEditingController();
  final _brandlname = TextEditingController();
  final _description = TextEditingController();
  bool selectTv1 = false;
  bool selectTv2 = false;
  bool selectTv3 = false;

  final ImagePicker picker = ImagePicker();
  XFile? image;

  void _getFromCamera() async {
    image = await picker.pickImage(source: ImageSource.camera);
  }

  void _getFromgallary() async {
    image = await picker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            "ADD USED TV",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80),
                bottomLeft: Radius.circular(80),
              ),
            ),
            child: const Center(child: Icon(Icons.tv_sharp)),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                fixedSize: const Size(150, 50)),
                            onPressed: () {
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) => Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                fixedSize: Size(
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    50)),
                                            onPressed: () {
                                              _getFromCamera();
                                              Navigator.pop(context);
                                            },
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.camera_alt_outlined),
                                                Text("Take a photo")
                                              ],
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                fixedSize: Size(
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    50)),
                                            onPressed: () {
                                              _getFromgallary();
                                              Navigator.pop(context);
                                            },
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(CupertinoIcons
                                                    .photo_on_rectangle),
                                                Text("Upload from gallary")
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: const Text("Add photo")),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: image == null
                                    ? Text("upload image")
                                    : Image(
                                        image: FileImage(File(image!.path))),
                              ),
                            );
                          },
                          icon: const Icon(
                            CupertinoIcons.eye,
                            size: 30,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "   Brand",
                    style: TextStyle(fontSize: 15),
                  ),
                  CustomTextField(
                      controller: _brandlname, hintText: "Enter Brand name"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "   Model number",
                    style: TextStyle(fontSize: 15),
                  ),
                  CustomTextField(
                      controller: _modelname, hintText: "Enter model number"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "   Smart Tv:",
                        style: TextStyle(fontSize: 16),
                      ),
                      Checkbox(
                        activeColor: Colors.amber,
                        value: selectTv1,
                        onChanged: (value) {
                          selectTv1 = value!;
                          setState(() {});
                        },
                      ),
                      const Text(
                        " Android:",
                        style: TextStyle(fontSize: 16),
                      ),
                      Checkbox(
                        activeColor: Colors.amber,
                        value: selectTv2,
                        onChanged: (value) {
                          selectTv2 = value!;
                          setState(() {});
                        },
                      ),
                      const Text(
                        " Android:",
                        style: TextStyle(fontSize: 16),
                      ),
                      Checkbox(
                        activeColor: Colors.amber,
                        value: selectTv3,
                        onChanged: (value) {
                          selectTv3 = value!;
                          setState(() {});
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: _description,
                    minLines: 6,
                    maxLines: 200,
                    decoration: const InputDecoration(
                        hintText: "Add Description....",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: CupertinoColors.inactiveGray)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: CupertinoColors.activeBlue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: custom_button(
                        txt: "Submit",
                        onpress: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
