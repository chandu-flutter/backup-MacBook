import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class OnlineMagazineScreen extends StatefulWidget {
  const OnlineMagazineScreen({super.key});

  @override
  State<OnlineMagazineScreen> createState() => _OnlineMagazineScreenState();
}

class _OnlineMagazineScreenState extends State<OnlineMagazineScreen> {
  final String magazine = 'https://thandrisannidhiministries.org/blog/';
  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Online Magazine'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            InAppWebView(
              onLoadStart: (controller, url) {
                setState(() {
                  isLoading = true;
                });
              },
              onLoadStop: (controller, url) {
                setState(() {
                  isLoading = false;
                });
              },
              initialUrlRequest: URLRequest(url: WebUri(magazine)),
            ),
            Visibility(
              visible: isLoading,
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Color.fromARGB(255, 54, 1, 63),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
