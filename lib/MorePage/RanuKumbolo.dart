import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/imageLink/imageLink.dart';
import 'package:login/pages/home/zoom/ranuKumbolo1.dart'; //RK1
import 'package:login/pages/home/zoom/ranuKumbolo2.dart'; //RK2
import 'package:login/pages/home/zoom/ranuKumbolo3.dart'; //RK3
import 'package:login/pages/home/zoom/ranuKumbolo4.dart'; //RK4
import 'package:login/pages/home/zoom/ranuKumbolo5.dart'; //RK5
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../map_utils.dart';

class RanuKumbolo extends StatefulWidget {
  // const RanuKumbolo({super.key});

  @override
  State<RanuKumbolo> createState() => _RanuKumboloState();
}

class _RanuKumboloState extends State<RanuKumbolo> {
  final imageList = [
    "https://iili.io/HftoX4f.jpg",
    "https://iili.io/Hftoj24.jpg",
    "https://iili.io/HftowYl.jpg",
    "https://iili.io/HftoOpS.jpg",
    "https://iili.io/HftokT7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff25bac2),
        elevation: 10,
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ranu Kumbolo",
              style: TextStyle(fontSize: 35),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Row(
              children: [
                Text(
                  "00.00-00.00",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "WIB",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            child: DefaultTabController(
                length: 3, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'View'),
                            Tab(text: 'Maps'),
                          ],
                        ),
                      ),
                      Container(
                          height: 578, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            PhotoViewGallery.builder(
                              itemCount: imageList.length,
                              builder: (context, index) {
                                return PhotoViewGalleryPageOptions(
                                  imageProvider: NetworkImage(
                                    imageList[index],
                                  ),
                                  // Contained = the smallest possible size to fit one dimension of the screen
                                  minScale:
                                      PhotoViewComputedScale.contained * 1.0,
                                  // Covered = the smallest possible size to fit the whole screen
                                  maxScale: PhotoViewComputedScale.covered * 2,
                                );
                              },
                              scrollPhysics: BouncingScrollPhysics(),
                              // Set the background color to the "classic white"
                              backgroundDecoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                              ),
                              // loadingBuilder: (context, event) => Center(
                              //   child: Container(
                              //     width: 30.0,
                              //     height: 30.0,
                              //     child: CircularProgressIndicator(
                              //       backgroundColor: Colors.orange,
                              //       value: event == null
                              //           ? 0
                              //           : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                              //     ),
                              //   ),
                              // ),
                            ),
                            Center(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff25bac2),
                                ),

                                onPressed: () {
                                  MapUtils.openMap(
                                      -8.049398694503319, 112.92077288167322);
                                },
                                icon: Icon(Icons
                                    .location_on), //icon data for elevated button
                                label: Text("Location"), //label text
                              ),
                            ),
                          ]))
                    ])),
          )
          // Center(
          //   child: Stack(
          //     children: [
          //       Container(
          //         alignment: Alignment.topLeft,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(15),
          //             color: Colors.grey[400]),
          //         height: 150,
          //         width: 350,
          //         child: Padding(
          //           padding: const EdgeInsets.all(10.0),
          //           child: Row(
          //             children: [
          //               Text(
          //                 "Kuota :",
          //                 style: TextStyle(fontSize: 25),
          //               ),
          //               SizedBox(
          //                 width: 5,
          //               ),
          //               Text("50", style: TextStyle(fontSize: 25))
          //             ],
          //           ),
          //         ),
          //       ),
          //       Padding(
          //           padding: const EdgeInsets.only(top: 50),
          //           child: Container(
          //               height: 500,
          //               width: 350,
          //               decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.circular(15),
          //                   border: Border.all(
          //                     color: Colors.grey,
          //                     width: 5,
          //                   )),
          //               // color: Colors.blue,
          //               child: Text(
          //                 "Ranu Pane",
          //                 style: TextStyle(
          //                     fontFamily: 'KaushanScript', fontSize: 30),
          //                 // textScaleFactor: 1.0,
          //               ))),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
