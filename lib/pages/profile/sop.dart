import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class sop extends StatefulWidget {
  // const sop({super.key});

  @override
  State<sop> createState() => _sopState();
}

class _sopState extends State<sop> {
  final pdfController =
      PdfController(document: PdfDocument.openAsset('assets/pdf/sop.pdf'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF25BAC2),
        title: Text("SOP"),
      ),
      body: Center(
          child: PdfView(
        controller: pdfController,
      )),
    );
  }
}
