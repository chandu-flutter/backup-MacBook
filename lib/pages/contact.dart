import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:thandri_sannidhi/maps/map.dart';

import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Contact Us'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () async {
                  final Uri url = Uri(scheme: 'tel', path: "9666534389");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('cannot launch this url');
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(4, 4),
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(-4, -4),
                      ),
                    ],
                  ),
                  width: 200,
                  height: 100,
                  child: Lottie.asset("animations/phone.json"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: InkWell(
                    onTap: () async {
                      final Uri url = Uri(scheme: 'tel', path: "9666534389");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        print('cannot launch this url');
                      }
                    },
                    child: const Text(
                      'FOR PRAYER REQUESTS PLEASE CALL',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MyMapPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(4, 4),
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(-4, -4),
                      ),
                    ],
                  ),
                  width: 200,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 16.0,
                    ),
                    child: Lottie.asset("animations/loc.json",
                        height: 75, width: 75),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  child: const Center(
                    child: Column(
                      children: [
                        Text(
                          'THANDRI SANNIDHI MINISTRIES',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 128, 0, 128),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'CHILAKALURIPET,PALNADU DIST',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'PIN CODE-522616',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'ANDHRA PRADESH,INDIA',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '9666534389,9666774417',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
