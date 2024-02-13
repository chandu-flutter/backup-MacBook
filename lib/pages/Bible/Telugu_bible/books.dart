import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/pages/Bible/English_Bible/chapters.dart';

import 'bible_helper.dart';

class TelBooks extends StatefulWidget {
  final Map data;

  const TelBooks(this.data, {super.key});

  @override
  State<TelBooks> createState() => _TelBooksState();
}

class _TelBooksState extends State<TelBooks> {
  TelBibleHelper telhelper = TelBibleHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text(''),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: widget.data['Book'].length,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      telhelper.getBookByIndex(index),
                      style: const TextStyle(fontSize: 18),
                    ),
                  )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Chapters(widget.data['Book'][index]['Chapter'])),
                    );
                  },
                );
              })),
    );
  }
}
