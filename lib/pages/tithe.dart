import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Tithe extends StatefulWidget {
  const Tithe({super.key});

  @override
  State<Tithe> createState() => _TitheState();
}

class _TitheState extends State<Tithe> {
  final Uri donation = Uri.parse(
      'https://portal.getepay.in:8443/getepayPortal/paymentForm/TSMFORM');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Tithe'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "images/scan_pay.jpg",
              width: 230,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size(200, 100),
                maximumSize: const Size(200, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Donate",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                launchUrl(donation, mode: LaunchMode.externalApplication);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Lottie.asset("animations/give.json", width: 250),
          ],
        ),
      ),
    );
  }
}
