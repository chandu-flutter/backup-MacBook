import 'package:flutter/material.dart';

class OnlineBible extends StatefulWidget {
  const OnlineBible({super.key});

  @override
  State<OnlineBible> createState() => _OnlineBibleState();
}

class _OnlineBibleState extends State<OnlineBible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('OnlineBible'),
        centerTitle: true,
      ),
      body: const Column(),
    );
  }
}
