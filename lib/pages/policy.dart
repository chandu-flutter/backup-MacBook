import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 54, 1, 63),
          Color.fromARGB(255, 54, 1, 63),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: const Center(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 1,
                    ),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: Container(
                          height: 600,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 229, 130, 247),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              SingleChildScrollView(
                                child: Container(
                                  height: 600,
                                  padding: const EdgeInsets.all(10),
                                  child: const SingleChildScrollView(
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        "At Thandri Sannidhi Ministries, we respect your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our app thandrisannidhiministries.\n"
                                        "Information We Collect\n\n"
                                        "Personal Information: \nWhen you visit our app or contact us, we may collect personal information such as your name, phone number, and postal address. We collect this information only when you voluntarily provide it to us.\n"
                                        "How We Use Your Information\n\n"
                                        "We may use your information for the following purposes:\n"
                                        "To provide you with information about Thandri Sannidhi Ministries and our services.\n"
                                        "To respond to your inquiries or requests."
                                        "To send you newsletters, updates, and other relevant information.\n"
                                        "To improve our app and services.\n"
                                        "To comply with legal obligations.\n"
                                        "Data Security\n"
                                        "We take reasonable steps to safeguard your personal information.\n\n"
                                        "Disclosure of Information\n\n"
                                        "We do not sell, trade, or rent your personal information to third parties."
                                        "Changes to this Privacy Policy\n\n"
                                        "We may update this Privacy Policy from time to time to reflect changes in our practices or for legal reasons. The revised policy will be posted on our app with the last updated date.\n\n"
                                        "If you have any questions or concerns about this Privacy Policy, \n\n"
                                        "Thandri Sannidhi Ministries\n"
                                        "Chilakaluripet,Palnadu district,\nAndhra Pradesh(522616)\n"
                                        "Email: contact@thandrisannidhiministries.org\n"
                                        "Phone: +91 9666534389",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
