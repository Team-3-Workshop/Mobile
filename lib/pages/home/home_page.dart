// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:login/MorePage/Bromo.dart';
import 'package:login/MorePage/RanuKumbolo.dart';
import 'package:login/MorePage/RanuRegulo.dart';
import 'package:login/MorePage/Semeru.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../MorePage/RanuPane.dart';
import 'package:login/prototype/counter.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeIndex = 0;
  String i = "";
  var controller;
  String hotel = "";
  String trans = "";
  final CarouselController _controller = CarouselController();
  int _counter = 0;
  final TextEditingController _counterController = TextEditingController();

  @override
  void initState() {
    _counterController.text = '$_counter';
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: [
                  Stack(children: [
                    Container(
                      // margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://static.wixstatic.com/media/c9e873_acfcc859e596457aa55ada46180dde0c~mv2.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 430, left: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 40),
                          primary: Color(0xff25bac2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Bromo();
                          }));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 280, left: 20),
                      child: Text(
                        "Bromo",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310, left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                            "Bromo mountain is not only rich of its natural beauty but also in harmony with the local people around it."),
                      ),
                    )
                  ]),
                  Stack(children: [
                    Container(
                      // margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/9/93/Frost_in_Ranu_Pani_on_4_August_2018_by_Susanto_Tan.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 430, left: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 40),
                          primary: Color(0xff25bac2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RanuPane();
                          }));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 280, left: 20),
                      child: Text(
                        "Ranu Pane",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310, left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          "Ranu Pani adalah salah satu titik berangkat untuk pendaki yang akan melakukan pendakian ke Gunung Semeru",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ]),
                  Stack(children: [
                    Container(
                      // margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://static.republika.co.id/uploads/images/inpicture_slide/keindahan-ranu-regulo-di-pagi-hari-_180502192610-850.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 430, left: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 40),
                          primary: Color(0xff25bac2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RanuRegulo();
                          }));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 280, left: 20),
                      child: Text(
                        "Ranu Regulo",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310, left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          "Ranu Regulo are three rows of beautiful lakes at the foot of Mount Semeru, located in the village of Ranu Pane, Senduro District, Lumajang.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ]),
                  Stack(children: [
                    Container(
                      // margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.agentwisatabromo.com/wp-content/uploads/2015/08/Ranu-Kumbolo.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 430, left: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 40),
                          primary: Color(0xff25bac2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RanuKumbolo();
                          }));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 280, left: 20),
                      child: Text(
                        "Ranu Kumbolo",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310, left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          "Ranu Kumbolo is a lake with a breathtaking and exotic scenery. The lake edge is used as resting place and make camp for Gunung Semeru climners.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ]),
                  Stack(children: [
                    Container(
                      // margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://img.okezone.com/content/2022/11/09/519/2704343/gunung-semeru-kembali-erupsi-pvmbg-minta-masyarakat-jauhi-sungai-hindari-aliran-lahar-IgeXSgDoUA.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 430, left: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 40),
                          primary: Color(0xff25bac2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Semeru();
                          }));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 280, left: 20),
                      child: Text(
                        "Mount Semeru",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310, left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          "the highest mountain on the island of Java with a height of 3,676 meters above sea level",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ]),
                ],
                options: CarouselOptions(
                  autoPlayInterval: Duration(seconds: 5),
                  height: 500.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _activeIndex = index;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450, left: 290),
                child: AnimatedSmoothIndicator(
                  activeIndex: _activeIndex,
                  count: 5,
                  effect: const JumpingDotEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      jumpScale: .7,
                      verticalOffset: 20,
                      activeDotColor: Colors.red,
                      dotColor: Colors.grey),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33.0, top: 20.0, bottom: 20.0),
            child: Text("Tickets :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          ),
          Center(
            child: Wrap(
                direction: Axis.horizontal,
                // alignment: WrapAlignment.center,
                spacing: 25.0,
                // runAlignment:WrapAlignment.center,
                runSpacing: 15.0,
                // crossAxisAlignment: WrapCrossAlignment.center,
                // textDirection: TextDirection.rtl,
                // verticalDirection: VerticalDirection.up,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[400],
                          ),
                          height: 150,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 115),
                            child: Text(
                              "IDR 35.000",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xff25bac2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              // color: Colors.blue,
                              child: Center(
                                  child: Text(
                                "Bromo",
                                style: TextStyle(
                                    fontFamily: 'KaushanScript', fontSize: 30),
                                // textScaleFactor: 1.0,
                              ))),
                          onTap: () {
                            showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return StatefulBuilder(builder:
                                      (BuildContext context,
                                          StateSetter state) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Center(
                                          child: ListView(children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 324),
                                                  child: TextButton.icon(
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(),
                                                    icon: Icon(Icons.close,
                                                        color:
                                                            Colors.grey[700]),
                                                    label: Text(''),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    SizedBox(width: 20),
                                                    Image.asset(
                                                      'assets/images/ranu_kumbolo.jpg',
                                                      fit: BoxFit.cover,
                                                      height: 160,
                                                      width: 160,
                                                    ),
                                                    SizedBox(width: 40),
                                                    Text(
                                                      'Rp 700.000',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF25BAC2),
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 40),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 135,
                                                          bottom: 40),
                                                  child: Text(
                                                    "   Choose your hotel:",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                                new Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Row(
                                                      children: [
                                                        new Radio(
                                                          value:
                                                              "el shadai homestay",
                                                          groupValue: hotel,
                                                          onChanged: (value) {
                                                            state(() {
                                                              hotel = value
                                                                  .toString();
                                                            });
                                                            print(hotel);
                                                          },
                                                        ),
                                                        Image.asset(
                                                          'assets/images/elshadaihomestay.jpg',
                                                          height: 70,
                                                          width: 70,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 15),
                                                          child: Text(
                                                              "el shadai homestay"),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        new Radio(
                                                          value:
                                                              "resort ranu pane",
                                                          groupValue: hotel,
                                                          onChanged: (value) {
                                                            state(() {
                                                              hotel = value
                                                                  .toString();
                                                            });
                                                            print(hotel);
                                                          },
                                                        ),
                                                        Image.asset(
                                                          'assets/images/resortranupane.jpg',
                                                          height: 70,
                                                          width: 70,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 15),
                                                          child: Text(
                                                              "resort ranu pane"),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        new Radio(
                                                          value:
                                                              "griya semeru homesatay",
                                                          groupValue: hotel,
                                                          onChanged: (value) {
                                                            state(() {
                                                              hotel = value
                                                                  .toString();
                                                            });
                                                            print(hotel);
                                                          },
                                                        ),
                                                        Image.asset(
                                                          'assets/images/griyasemeruhomestay.jpg',
                                                          height: 70,
                                                          width: 70,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 15),
                                                          child: Text(
                                                              "griya semeru homesatay"),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.only(
                                                //           left: 20),
                                                //   child: Container(
                                                //     height: 70,
                                                //     // width: MediaQuery.of(context)
                                                //     //     .size
                                                //     //     .width,
                                                //     child: Row(
                                                //       children: [
                                                //         Container(
                                                //           width: 30,
                                                //           child: RadioListTile(
                                                //             // title: Text("user"),
                                                //             value:
                                                //                 "El Shadai Homestay",
                                                //             groupValue: hotel,
                                                //             onChanged: (value) {
                                                //               setState(() {
                                                //                 hotel = value
                                                //                     .toString();
                                                //               });
                                                //             },
                                                //           ),
                                                //         ),
                                                //         SizedBox(width: 20),
                                                //         Image.asset(
                                                //           'assets/images/elshadaihomestay.jpg',
                                                //           height: 70,
                                                //           width: 70,
                                                //         ),
                                                //         Padding(
                                                //           padding:
                                                //               const EdgeInsets
                                                //                       .only(
                                                //                   left: 15),
                                                //           child: Text(
                                                //               'El Shadai Homestay'),
                                                //         ),
                                                //       ],
                                                //     ),
                                                //   ),
                                                // ),
                                                // SizedBox(height: 20),
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.only(
                                                //           left: 20),
                                                //   child: Container(
                                                //     height: 70,
                                                //     width:
                                                //         MediaQuery.of(context)
                                                //             .size
                                                //             .width,
                                                //     child: Row(
                                                //       children: [
                                                //         Container(
                                                //           width: 20,
                                                //           child: RadioListTile(
                                                //             // title: Text("user"),
                                                //             value:
                                                //                 "Resort Ranu Pane",
                                                //             groupValue: hotel,
                                                //             onChanged: (value) {
                                                //               setState(() {
                                                //                 hotel = value
                                                //                     .toString();
                                                //               });
                                                //             },
                                                //           ),
                                                //         ),
                                                //         SizedBox(width: 20),
                                                //         Image.asset(
                                                //           'assets/images/resortranupane.jpg',
                                                //           height: 70,
                                                //           width: 70,
                                                //         ),
                                                //         Padding(
                                                //           padding:
                                                //               const EdgeInsets
                                                //                       .only(
                                                //                   left: 15),
                                                //           child: Text(
                                                //               'Resort Ranu Pane'),
                                                //         ),
                                                //       ],
                                                //     ),
                                                //   ),
                                                // ),
                                                // SizedBox(height: 20),
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.only(
                                                //           left: 20),
                                                //   child: Container(
                                                //     height: 70,
                                                //     width:
                                                //         MediaQuery.of(context)
                                                //             .size
                                                //             .width,
                                                //     child: Row(
                                                //       children: [
                                                //         Container(
                                                //           width: 20,
                                                //           child: RadioListTile(
                                                //             // title: Text("user"),
                                                //             value:
                                                //                 "Giya Semeru Homestay",
                                                //             groupValue: hotel,
                                                //             onChanged: (value) {
                                                //               setState(() {
                                                //                 hotel = value
                                                //                     .toString();
                                                //               });
                                                //             },
                                                //           ),
                                                //         ),
                                                //         SizedBox(width: 20),
                                                //         Image.asset(
                                                //           'assets/images/griyasemeruhomestay.jpg',
                                                //           height: 70,
                                                //           width: 70,
                                                //         ),
                                                //         Padding(
                                                //           padding:
                                                //               const EdgeInsets
                                                //                       .only(
                                                //                   left: 15),
                                                //           child: Text(
                                                //               'Giya Semeru Homestay'),
                                                //         ),
                                                //       ],
                                                //     ),
                                                //   ),
                                                // ),
                                                SizedBox(height: 40),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 105),
                                                  child: Text(
                                                    "  Choose your vehicle:",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Row(
                                                      children: [
                                                        new Radio(
                                                          value: "jeep",
                                                          groupValue: trans,
                                                          onChanged: (value) {
                                                            state(() {
                                                              trans = value
                                                                  .toString();
                                                            });
                                                            print(trans);
                                                          },
                                                        ),
                                                        Image.asset(
                                                          'assets/images/jeep.jpg',
                                                          height: 70,
                                                          width: 70,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 15),
                                                          child: Text("jeep"),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        new Radio(
                                                          value: "motocross",
                                                          groupValue: trans,
                                                          onChanged: (value) {
                                                            state(() {
                                                              trans = value
                                                                  .toString();
                                                            });
                                                            print(trans);
                                                          },
                                                        ),
                                                        Image.asset(
                                                          'assets/images/motorcross.jpg',
                                                          height: 70,
                                                          width: 70,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 15),
                                                          child:
                                                              Text("motocross"),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                // SizedBox(height: 20),
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.only(
                                                //           right: 90),
                                                //   child: InkWell(
                                                //     child: Container(
                                                //       height: 70,
                                                //       width:
                                                //           MediaQuery.of(context)
                                                //               .size
                                                //               .width,
                                                //       child: Row(
                                                //         children: [
                                                //           SizedBox(width: 20),
                                                //           Image.asset(
                                                //             'assets/images/elshadaihomestay.jpg',
                                                //             height: 70,
                                                //             width: 70,
                                                //           ),
                                                //           Text(
                                                //               '   El Shadai Homestay'),
                                                //         ],
                                                //       ),
                                                //     ),
                                                //   ),
                                                // ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 200),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      SizedBox(
                                                        width: 44,
                                                        height: 30,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              6),
                                                                          side:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.grey.shade200,
                                                                            width:
                                                                                3.0,
                                                                          )),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  shadowColor:
                                                                      Colors
                                                                          .transparent),
                                                          onPressed: () {
                                                            setState(() {
                                                              _counter--;
                                                              _counterController
                                                                      .text =
                                                                  '$_counter';
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons.remove,
                                                            size: 14,
                                                            color: Color(
                                                                0xFF25BAC2),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 20),
                                                      Container(
                                                        width: 50,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                          ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          textAlign:
                                                              TextAlign.center,
                                                          controller:
                                                              _counterController,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 44,
                                                        height: 30,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              6),
                                                                          side:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.grey.shade200,
                                                                            width:
                                                                                3.0,
                                                                          )),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  shadowColor:
                                                                      Colors
                                                                          .transparent),
                                                          onPressed: () {
                                                            setState(() {
                                                              _counter++;
                                                              _counterController
                                                                      .text =
                                                                  '$_counter';
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 14,
                                                            color: Color(
                                                                0xFF25BAC2),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10.0),
                                                  decoration: BoxDecoration(),
                                                  margin: EdgeInsets.all(15),
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  Color(
                                                                      0xFF25BAC2),
                                                              shape:
                                                                  StadiumBorder()),
                                                      child: Text(
                                                          "                             Buy Now                                        ")),
                                                )
                                              ],
                                            ),
                                          ]),
                                        ),
                                      ),
                                    );
                                  });
                                });
                          },
                          // Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (context) => MyHomePage())),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[400]),
                          height: 150,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 115),
                            child: Text(
                              "IDR 15.000",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Color(0xff25bac2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // color: Colors.blue,
                            child: Center(
                                child: Text(
                              "Ranu Pane",
                              style: TextStyle(
                                  fontFamily: 'KaushanScript', fontSize: 30),
                              // textScaleFactor: 1.0,
                            ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 150,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 115),
                            child: Text(
                              "IDR 35.000",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff25bac2),
                            ),
                            // color: Colors.blue,
                            child: Center(
                                child: Text(
                              "Ranu Kumbolo", textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'KaushanScript', fontSize: 30),
                              // textScaleFactor: 1.0,
                            ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 150,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 115),
                            child: Text(
                              "IDR 50.000",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Color(0xff25bac2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // color: Colors.blue,
                            child: Center(
                                child: Text(
                              "Semeru",
                              style: TextStyle(
                                  fontFamily: 'KaushanScript', fontSize: 30),
                              // textScaleFactor: 1.0,
                            ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 150,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 115),
                            child: Text(
                              "IDR 35.000",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff25bac2),
                            ),
                            // color: Colors.blue,
                            child: Center(
                                child: Text(
                              "Ranu Regulo",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'KaushanScript', fontSize: 30),
                              // textScaleFactor: 1.0,
                            ))),
                      ],
                    ),
                  ),
                ]),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       FirebaseAuth.instance.signOut();
          //     },
          //     child: Text("log out"))
        ],
      ),
    );
  }
}
