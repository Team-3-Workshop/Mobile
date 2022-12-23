import 'package:flutter/material.dart';
import 'package:login/zoom/bromoF3.dart';
import 'package:login/zoom/bromoF5.dart';
import 'package:login/zoom/bromoFI.dart';
import 'package:login/zoom/bromoF2.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../map_utils.dart';
import 'package:login/imageLink/imageLink.dart';

import '../zoom/bromoF4.dart';

class photoView extends StatefulWidget {
  photoView({super.key});

  @override
  State<photoView> createState() => _photoViewState();
}

class _photoViewState extends State<photoView> {
  final imageList = [
    "https://static.wixstatic.com/media/c9e873_acfcc859e596457aa55ada46180dde0c~mv2.jpeg",
    "https://iili.io/HfkBOyF.jpg",
    "https://iili.io/HfkBWEQ.jpg",
    "https://cdn0-production-images-kly.akamaized.net/c6wfZfI1AxJVSNWSsnZLReRv9XQ=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3567172/original/006768600_1631244835-20210910-hampr-3-bulan-ditutup_-hari-ini-Bromo-dibuka-untuk-wisatawan-ARBAS-2.jpg",
    "https://iili.io/HfkBVCx.jpg",
    'https://resocoder.com/wp-content/uploads/2019/04/thumbnail-2.png',
    'https://resocoder.com/wp-content/uploads/2019/04/thumbnail-1.png',
    'https://resocoder.com/wp-content/uploads/2019/01/thumbnail.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff25bac2),
        elevation: 10,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bromo",
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
                length: 2, // length of tabs
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
                          //height of TabBarView
                          height: 650,
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
                            ),
                            // Container(
                            //   // height: 650,
                            //   alignment: Alignment.topCenter,
                            //   child: ListView(
                            //     children: [
                            //       SizedBox(
                            //         height: 25,
                            //       ),
                            //       Center(
                            //         child: Wrap(
                            //           direction: Axis.horizontal,
                            //           // alignment: WrapAlignment.center,
                            //           spacing: 15.0,
                            //           // runAlignment:WrapAlignment.center,
                            //           runSpacing: 15.0,
                            //           // crossAxisAlignment: WrapCrossAlignment.center,
                            //           // textDirection: TextDirection.rtl,
                            //           // verticalDirection: VerticalDirection.up,
                            //           children: [
                            //             GestureDetector(
                            //               onTap: () {
                            //                 Navigator.push(context,
                            //                     MaterialPageRoute(
                            //                         builder: (context) {
                            //                   return bromoF1();
                            //                 }));
                            //               },
                            //               child: Hero(
                            //                 tag: "f1",
                            //                 child: Container(
                            //                   height: 250,
                            //                   width: 180,
                            //                   decoration: BoxDecoration(
                            //                     image: DecorationImage(
                            //                       image: NetworkImage(
                            //                           imgLink.bromo1),
                            //                       fit: BoxFit.cover,
                            //                     ),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //             GestureDetector(
                            //               onTap: () {
                            //                 Navigator.push(context,
                            //                     MaterialPageRoute(
                            //                         builder: (context) {
                            //                   return bromoF2();
                            //                 }));
                            //               },
                            //               child: Hero(
                            //                 tag: "f2",
                            //                 child: Container(
                            //                   height: 250,
                            //                   width: 180,
                            //                   decoration: BoxDecoration(
                            //                     image: DecorationImage(
                            //                       image: NetworkImage(
                            //                           imgLink.bromo2),
                            //                       fit: BoxFit.cover,
                            //                     ),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //             GestureDetector(
                            //               onTap: () {
                            //                 Navigator.push(context,
                            //                     MaterialPageRoute(
                            //                         builder: (context) {
                            //                   return bromoF3();
                            //                 }));
                            //               },
                            //               child: Hero(
                            //                 tag: "f3",
                            //                 child: Container(
                            //                   height: 250,
                            //                   width: 180,
                            //                   decoration: BoxDecoration(
                            //                     image: DecorationImage(
                            //                       image: NetworkImage(
                            //                           imgLink.bromo3),
                            //                       fit: BoxFit.cover,
                            //                     ),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //             GestureDetector(
                            //               onTap: () {
                            //                 Navigator.push(context,
                            //                     MaterialPageRoute(
                            //                         builder: (context) {
                            //                   return bromoF4();
                            //                 }));
                            //               },
                            //               child: Hero(
                            //                 tag: "f4",
                            //                 child: Container(
                            //                   height: 250,
                            //                   width: 180,
                            //                   decoration: BoxDecoration(
                            //                     image: DecorationImage(
                            //                       image: NetworkImage(
                            //                           imgLink.bromo4),
                            //                       fit: BoxFit.cover,
                            //                     ),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //             GestureDetector(
                            //               onTap: () {
                            //                 Navigator.push(context,
                            //                     MaterialPageRoute(
                            //                         builder: (context) {
                            //                   return bromoF5();
                            //                 }));
                            //               },
                            //               child: Hero(
                            //                 tag: "f5",
                            //                 child: Container(
                            //                   height: 250,
                            //                   width: 180,
                            //                   decoration: BoxDecoration(
                            //                     image: DecorationImage(
                            //                       image: NetworkImage(
                            //                           imgLink.bromo5),
                            //                       fit: BoxFit.cover,
                            //                     ),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),

                            Center(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff25bac2),
                                ),

                                onPressed: () {
                                  MapUtils.openMap(-8.0215648, 112.9524508);
                                },
                                icon: Icon(Icons
                                    .location_on), //icon data for elevated button
                                label: Text("Location"), //label text
                              ),
                            ),
                          ]))
                    ])),
          )
        ],
      ),
    );
  }
}
