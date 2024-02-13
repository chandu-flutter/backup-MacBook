import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImages extends StatefulWidget {
  const UploadImages({super.key});

  @override
  State<UploadImages> createState() => _UploadImagesState();
}

class _UploadImagesState extends State<UploadImages> {
  final ImagePicker _picker = ImagePicker();
  final List<XFile> _selectedFiles = [];
  final FirebaseStorage _storageRef = FirebaseStorage.instance;
  final List<String> _arrImageUrls = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            OutlinedButton(
                child: const Text("Upload Images"),
                onPressed: () {
                  selectImage();
                }),
            ElevatedButton.icon(
              onPressed: () {
                uploadFunction(_selectedFiles);
              },
              icon: const Icon(Icons.upload),
              label: const Text("Upload"),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: _selectedFiles.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
            )
          ],
        ),
      ),
    ));
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
    Reference reference =
        _storageRef.ref().child("multiple_images").child(image.name);
    UploadTask uploadTask = reference.putFile(
      File(image.path),
    );
    await uploadTask.whenComplete(() {});
    return await reference.getDownloadURL();
  }

  Future<void> selectImage() async {
    _selectedFiles.clear();
      try {
      final List<XFile> imgs = await _picker.pickMultiImage();
      if (imgs.isNotEmpty) {
        _selectedFiles.addAll(imgs);
      }
    } catch (e) {
      print(
        "Something went Wrong$e",
      );
    }
    setState(() {});
  }
}
