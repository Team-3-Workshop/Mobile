import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

import 'package:flutter/material.dart';

class Tutorial extends StatelessWidget {
  const Tutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          color: Colors.white, // Your screen background color
        ),
        SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(height: 70.0),
        ])),
        new Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            title: Text(''), // You can add title here
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            backgroundColor: Color(0xFF25BAC2), //You can make this transparent
            elevation: 0.0, //No shadow
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: Color(0xFF25BAC2),
                child: Column(
                  children: [
                    Text(''),
                    Text(
                      'How can we help?           ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

// class Tutorial extends StatefulWidget {
//   // const Tutorial({super.key});

//   @override
//   State<Tutorial> createState() => _TutorialState();
// }

// class _TutorialState extends State<Tutorial> {
//   final pdfController =
//       PdfController(document: PdfDocument.openAsset('assets/pdf/sop.pdf'));
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SOP"),
//       ),
//       body: Center(
//           child: PdfView(
//         controller: pdfController,
//       )),
//     );
//   }
// }
