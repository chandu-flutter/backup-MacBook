import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Website extends StatelessWidget {
  final String web = 'https://thandrisannidhiministries.org/';

  const Website({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Thandri Sannidhi Ministries'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri(web)),
        ),
      ),
    );
  }
}
