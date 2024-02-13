import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PrayerVictories extends StatefulWidget {
  const PrayerVictories({super.key});

  @override
  State<PrayerVictories> createState() => _PrayerVictoriesState();
}

class _PrayerVictoriesState extends State<PrayerVictories> {
  final String youtubePlaylistUrl =
      'https://www.youtube.com/playlist?list=PLDb1p7boCQFHvxnrC6W_evjQrrF5fKXg-';
  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Prayer Victories'),
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
              initialUrlRequest: URLRequest(url: WebUri(youtubePlaylistUrl)),
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
