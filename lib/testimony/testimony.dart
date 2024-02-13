import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:thandri_sannidhi/testimony/testimony_received.dart';

class TestimonyScreen extends StatefulWidget {
  const TestimonyScreen({super.key});

  @override
  State<TestimonyScreen> createState() => _TestimonyScreenState();
}

class _TestimonyScreenState extends State<TestimonyScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final testimonyController = TextEditingController();
  final fireStore = FirebaseFirestore.instance.collection("testimony");

  final ImagePicker _picker = ImagePicker();
  final List<XFile> _selectedFiles = [];
  final FirebaseStorage _storageRef = FirebaseStorage.instance;
  final List<String> _arrImageUrls = [];

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Your Mobile Number";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("Your Testimony"),
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 35, bottom: 5),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: "Your Name",
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Name";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: "Your Phone Number",
                      prefixIcon: Icon(Icons.phone_android),
                      prefixIconColor: Color.fromARGB(255, 54, 1, 63),
                    ),
                    validator: validatePhone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 28.0, right: 28, top: 5, bottom: 5),
                  child: TextFormField(
                    maxLines: 15,
                    controller: testimonyController,
                    decoration: const InputDecoration(
                      hintText: "Your Testimony",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Testimony";
                      }
                      return null;
                    },
                  ),
                ),
                OutlinedButton(
                    child: const Text("Upload Images"),
                    onPressed: () {
                      selectImage();
                    }),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: _selectedFiles.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.file(
                          File(_selectedFiles[index].path),
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      fireStore
                          .doc("${nameController.text}|${phoneController.text}")
                          .set({
                        'name': nameController.text.toString(),
                        'mobile': phoneController.text.toString(),
                        'Testimony': testimonyController.text.toString(),
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const TestimonyReceivedScreen();
                        }),
                      );
                    }

                    uploadFunction(_selectedFiles);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 54, 1, 63),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: const Size(350, 50),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> selectImage() async {
    try {
      final List<XFile> imgs = await _picker.pickMultiImage();
      if (imgs.isNotEmpty) {
        _selectedFiles.addAll(imgs);
      }
    } catch (e) {
      "Something went Wrong$e";
    }
    setState(() {});
  }

  void uploadFunction(List<XFile> images) {
    for (int i = 0; i < images.length; i++) {
      var imageUrl = uploadFile(images[i]);
      _arrImageUrls.add(
        imageUrl.toString(),
      );
    }
  }

  Future<String> uploadFile(XFile image) async {
    Reference reference = _storageRef
        .ref()
        .child("${nameController.text}|${phoneController.text}")
        .child(image.name);
    UploadTask uploadTask = reference.putFile(
      File(image.path),
    );
    await uploadTask.whenComplete(() {});
    return await reference.getDownloadURL();
  }
}
