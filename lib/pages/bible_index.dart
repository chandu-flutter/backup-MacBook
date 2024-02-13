import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/pages/Bible/English_Bible/bible_helper.dart';
import 'package:thandri_sannidhi/pages/Bible/English_Bible/books.dart';

import 'package:thandri_sannidhi/pages/Bible/Telugu_bible/bible_helper.dart';
import 'package:thandri_sannidhi/pages/Bible/Telugu_bible/books.dart';
import 'package:thandri_sannidhi/pages/home.dart';

class BibleIndex extends StatefulWidget {
  const BibleIndex({super.key});

  @override
  State<BibleIndex> createState() => _BibleIndexState();
}

class _BibleIndexState extends State<BibleIndex> {
  EngBibleHelper enghelper = EngBibleHelper();
  TelBibleHelper telhelper = TelBibleHelper();
  @override
  void initState() {
    super.initState();
    enghelper.readengBible(context);
    telhelper.readtelBible(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Bible'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelBooks(telhelper.bibleData)),
                    );
                  },
                  child: LinkedBible(
                    icon: Icons.auto_stories,
                    label1: "Telugu",
                    label2: "Bible",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EngBooks(enghelper.bibleData)),
                    );
                  },
                  child: LinkedBible(
                    icon: Icons.auto_stories,
                    label1: "English",
                    label2: "Bible",
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class LinkedBible extends StatelessWidget {
  IconData icon;
  String label1;
  String label2;
  LinkedBible({
    super.key,
    required this.icon,
    required this.label1,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label1,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          Icon(
            icon,
            size: 40,
            color: const Color.fromARGB(255, 54, 1, 63),
          ),
          Text(
            label2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
