import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class Tutorial extends StatefulWidget {
  // const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  final pdfController =
      PdfController(document: PdfDocument.openAsset('assets/pdf/sop.pdf'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SOP"),
      ),
      body: Center(
          child: PdfView(
        controller: pdfController,
      )),
    );
  }
}
