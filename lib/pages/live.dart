import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class YoutubeLive extends StatefulWidget {
  const YoutubeLive({super.key});

  @override
  State<YoutubeLive> createState() => _YoutubeLiveState();
}

class _YoutubeLiveState extends State<YoutubeLive> {
  final String youtubelive =
      'https://www.youtube.com/playlist?list=PLDb1p7boCQFEwNpMHaiBP_Sxak1jJUtpS';

  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Live'),
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
              initialUrlRequest: URLRequest(url: WebUri(youtubelive)),
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
