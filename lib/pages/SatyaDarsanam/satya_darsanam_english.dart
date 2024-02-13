import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SatyaDarsanamEnglish extends StatefulWidget {
  const SatyaDarsanamEnglish({super.key});

  @override
  State<SatyaDarsanamEnglish> createState() => _SatyaDarsanamEnglishState();
}

class _SatyaDarsanamEnglishState extends State<SatyaDarsanamEnglish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Satya Darsanam'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SfPdfViewer.asset("images/satya_english.pdf"),
      ),
    );
  }
}
