import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SatyaDarsanamTelugu extends StatefulWidget {
  const SatyaDarsanamTelugu({super.key});

  @override
  State<SatyaDarsanamTelugu> createState() => _SatyaDarsanamTeluguState();
}

class _SatyaDarsanamTeluguState extends State<SatyaDarsanamTelugu> {
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
        child: SfPdfViewer.asset("images/satya_telugu.pdf"),
      ),
    );
  }
}
