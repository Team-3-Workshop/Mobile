import 'package:flutter/material.dart';

import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../map_utils.dart';
import 'package:login/imageLink/imageLink.dart';

//bromoF4

class Bromo extends StatefulWidget {
  // const Bromo({super.key});

  @override
  State<Bromo> createState() => _BromoState();
}

class _BromoState extends State<Bromo> {
  final imageList = [
    "https://static.wixstatic.com/media/c9e873_acfcc859e596457aa55ada46180dde0c~mv2.jpeg",
    "https://iili.io/HfkBOyF.jpg",
    "https://iili.io/HfkBWEQ.jpg",
    "https://cdn0-production-images-kly.akamaized.net/c6wfZfI1AxJVSNWSsnZLReRv9XQ=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3567172/original/006768600_1631244835-20210910-hampr-3-bulan-ditutup_-hari-ini-Bromo-dibuka-untuk-wisatawan-ARBAS-2.jpg",
    "https://iili.io/HfkBVCx.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 2.0),
            child: Text(
              "BUKA",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
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
