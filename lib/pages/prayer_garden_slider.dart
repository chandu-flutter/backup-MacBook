import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PrayerGardenSlider extends StatefulWidget {
  PrayerGardenSlider(
      {super.key, required this.imageList, required this.currentImage});
  List imageList = [];
  int currentImage;
  @override
  State<PrayerGardenSlider> createState() => _PrayerGardenSliderState();
}

class _PrayerGardenSliderState extends State<PrayerGardenSlider> {
  late PageController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = PageController(initialPage: widget.currentImage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Prayer Garden'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider:
                      AssetImage('images/' + widget.imageList[index]),
                  initialScale: PhotoViewComputedScale.contained * 1.0,
                  // heroAttributes: PhotoViewHeroAttributes(tag: galleryItems[index].id),
                );
              },
              itemCount: widget.imageList.length,
              pageController: controller,
              onPageChanged: (value) {
                // widget.currentImage = value;
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
