import 'package:flutter/material.dart';
import 'package:login/imageLink/imageLink.dart';
import 'package:login/pages/home/zoom/ranuPane1.dart'; //RP1
import 'package:login/pages/home/zoom/ranuPane2.dart'; //RP2
import 'package:login/pages/home/zoom/ranuPane3.dart'; //RP3
import 'package:login/pages/home/zoom/ranuPane4.dart'; //RP4
import 'package:login/pages/home/zoom/ranuPane5.dart'; //RP5

import '../map_utils.dart';

class RanuPane extends StatefulWidget {
  const RanuPane({super.key});

  @override
  State<RanuPane> createState() => _RanuPaneState();
}

class _RanuPaneState extends State<RanuPane> {
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
              "Ranu Pane",
              style: TextStyle(fontSize: 35),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Row(
              children: [
                const Text(
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
                          height: 578, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              height: double.infinity,
                              alignment: Alignment.topCenter,
                              child: ListView(
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Center(
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      spacing: 15.0,
                                      runSpacing: 15.0,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ranuPane1();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rp1",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuPane1),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ranuPane2();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rp2",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuPane2),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ranuPane3();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rp3",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuPane3),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ranuPane4();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rp4",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuPane4),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ranuPane5();
                                            }));
                                          },
                                          child: Hero(
                                            tag: "rp5",
                                            child: Container(
                                              height: 250,
                                              width: 180,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      imgLink.ranuPane5),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff25bac2),
                                ),
                                onPressed: () {
                                  MapUtils.openMap(
                                      -8.012319185763612, 112.9458639007473);
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
