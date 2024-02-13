import 'package:flutter/material.dart';

class Verse extends StatefulWidget {
  final List data;

  const Verse(this.data, {super.key});

  @override
  State<Verse> createState() => _VerseState();
}

class _VerseState extends State<Verse> {
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
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    '${index + 1} ${widget.data[index]['Verse']}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
