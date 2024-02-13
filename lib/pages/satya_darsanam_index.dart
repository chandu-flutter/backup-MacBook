import 'package:flutter/material.dart';

import 'package:thandri_sannidhi/pages/SatyaDarsanam/satya_darsanam_english.dart';
import 'package:thandri_sannidhi/pages/SatyaDarsanam/satya_darsanam_kannada.dart';
import 'package:thandri_sannidhi/pages/SatyaDarsanam/satya_darsanam_telugu.dart';

class SatyaDarsanamIndex extends StatelessWidget {
  const SatyaDarsanamIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text('Satya Darsanam'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Satya_language_tel(),
            Satya_language_eng(),
            Satya_language_kannada(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Satya_language_eng extends StatelessWidget {
  const Satya_language_eng({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const SatyaDarsanamEnglish();
            },
          ),
        );
      },
      child: Container(
        height: 150,
        width: 250,
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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            Icon(
              (Icons.auto_stories),
              size: 40,
              color: Color.fromARGB(255, 54, 1, 63),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "English",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Satya_language_tel extends StatelessWidget {
  const Satya_language_tel({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const SatyaDarsanamTelugu();
            },
          ),
        );
      },
      child: Container(
        height: 150,
        width: 250,
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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            Icon(
              (Icons.auto_stories),
              size: 40,
              color: const Color.fromARGB(255, 54, 1, 63),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "తెలుగు",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Satya_language_kannada extends StatelessWidget {
  const Satya_language_kannada({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const SatyaDarsanamKannada();
            },
          ),
        );
      },
      child: Container(
        height: 150,
        width: 250,
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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Icon(
              (Icons.auto_stories),
              size: 40,
              color: Color.fromARGB(255, 54, 1, 63),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "ಕನ್ನಡ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
