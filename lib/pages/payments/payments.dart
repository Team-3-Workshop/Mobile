import 'package:flutter/material.dart';
import 'package:login/pages/payments/payments_detail.dart'; //payment detail
import 'package:login/pages/payments/payments_finished.dart'; //payments finish
import 'package:login/pages/payments/payments_ongoing.dart'; //payments ongoing
import 'package:login/pages/payments/payments_methode.dart';

class payments extends StatefulWidget {
  const payments({super.key});

  @override
  State<payments> createState() => _paymentsState();
}

class _paymentsState extends State<payments> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white, // Your screen background color
            ),
            SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(height: 70.0),
            ])),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 75, 0, 0),
                  child: Container(
                    child: Text('My Payments',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 140, 25, 0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[600],
                    tabs: [
                      Tab(text: 'Unpaid'),
                      Tab(text: 'Ongoing'),
                      Tab(text: 'Finished'),
                    ],
                    indicator: BoxDecoration(
                        color: Color(0xFF25BAC2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ListView(
                            children: [
                              InkWell(
                                child: Container(
                                    height: 230,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // color: Colors.lightGreen,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(11)),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Ranu Kumbolo',
                                                    style: TextStyle(
                                                      // fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 130,
                                                  ),
                                                  Text(
                                                    'Unpaid',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                      'assets/images/ranu_kumbolo.jpg',
                                                      fit: BoxFit.cover,
                                                      height: 70,
                                                      width: 70,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Experience Package Ranu Kumbolo',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'variation : JEEP, Griya Semeru Homestay       x1',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 130),
                                                        child: Text(
                                                          'Rp 700.000',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFF25BAC2)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '        1 Experience Packaage',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(width: 18),
                                                  Text('Total Pesanan: ',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors
                                                              .grey[700])),
                                                  Text(
                                                    'Rp 700.000',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '       Segera melakukan pembayaran ',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      fixedSize: Size(100, 25),
                                                      primary:
                                                          Color(0xff25bac2),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentDetail()),
                                                    ),
                                                    child: Text(
                                                      "More",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ))),
                              ),
                              SizedBox(height: 25),
                              InkWell(
                                child: Container(
                                    height: 230,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // color: Colors.lightGreen,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(11)),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Bromo',
                                                    style: TextStyle(
                                                      // fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 190,
                                                  ),
                                                  Text(
                                                    'Unpaid',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                      'assets/images/bromoh.jpg',
                                                      fit: BoxFit.cover,
                                                      height: 70,
                                                      width: 70,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Experience Package Bromo             ',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'variation : JEEP, Griya Semeru Homestay       x1',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 130),
                                                        child: Text(
                                                          'Rp 700.000',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFF25BAC2)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '        1 Experience Packaage',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(width: 18),
                                                  Text('Total Pesanan: ',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors
                                                              .grey[700])),
                                                  Text(
                                                    'Rp 700.000',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '       Segera melakukan pembayaran ',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      fixedSize: Size(100, 25),
                                                      primary:
                                                          Color(0xff25bac2),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentDetail()),
                                                    ),
                                                    child: Text(
                                                      "More",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ))),
                              ),
                              SizedBox(height: 25),
                              InkWell(
                                child: Container(
                                    height: 230,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // color: Colors.lightGreen,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(11)),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Ranu Pane',
                                                    style: TextStyle(
                                                      // fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 161,
                                                  ),
                                                  Text(
                                                    'Unpaid',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                      'assets/images/ranu pani.jpg',
                                                      fit: BoxFit.cover,
                                                      height: 70,
                                                      width: 70,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Experience Package Ranu Pane     ',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'variation : JEEP, Griya Semeru Homestay       x1',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 130),
                                                        child: Text(
                                                          'Rp 700.000',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFF25BAC2)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '        1 Experience Packaage',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(width: 18),
                                                  Text('Total Pesanan: ',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors
                                                              .grey[700])),
                                                  Text(
                                                    'Rp 700.000',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '       Segera melakukan pembayaran ',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      fixedSize: Size(100, 25),
                                                      primary:
                                                          Color(0xff25bac2),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentDetail()),
                                                    ),
                                                    child: Text(
                                                      "More",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ))),
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                child: Container(
                                    height: 230,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // color: Colors.lightGreen,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(11)),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Ranu Regulo',
                                                    style: TextStyle(
                                                      // fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 147,
                                                  ),
                                                  Text(
                                                    'Unpaid',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                      'assets/images/ranu regulo.jpg',
                                                      fit: BoxFit.cover,
                                                      height: 70,
                                                      width: 70,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Experience Package Ranu Regulo   ',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'variation : JEEP, Griya Semeru Homestay       x1',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 130),
                                                        child: Text(
                                                          'Rp 700.000',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFF25BAC2)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '        1 Experience Packaage',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(width: 18),
                                                  Text('Total Pesanan: ',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors
                                                              .grey[700])),
                                                  Text(
                                                    'Rp 700.000',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '       Segera melakukan pembayaran ',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      fixedSize: Size(100, 25),
                                                      primary:
                                                          Color(0xff25bac2),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentDetail()),
                                                    ),
                                                    child: Text(
                                                      "More",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ))),
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                child: Container(
                                    height: 230,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // color: Colors.lightGreen,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(11)),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Semeru',
                                                    style: TextStyle(
                                                      // fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 180,
                                                  ),
                                                  Text(
                                                    'Unpaid',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                      'assets/images/semeru.png',
                                                      fit: BoxFit.cover,
                                                      height: 70,
                                                      width: 70,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Experience Package Semeru          ',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'variation : JEEP, Griya Semeru Homestay       x1',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 130),
                                                        child: Text(
                                                          'Rp 700.000',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFF25BAC2)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '        1 Experience Packaage',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(width: 18),
                                                  Text('Total Pesanan: ',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors
                                                              .grey[700])),
                                                  Text(
                                                    'Rp 700.000',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '       Segera melakukan pembayaran ',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      fixedSize: Size(100, 25),
                                                      primary:
                                                          Color(0xff25bac2),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentDetail()),
                                                    ),
                                                    child: Text(
                                                      "More",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ))),
                              ),
                              SizedBox(height: 20),
                              InkWell(
                                child: Container(
                                    height: 230,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // color: Colors.lightGreen,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(11)),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Ranu Kumbolo',
                                                    style: TextStyle(
                                                      // fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 130,
                                                  ),
                                                  Text(
                                                    'Unpaid',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                      'assets/images/ranu_kumbolo.jpg',
                                                      fit: BoxFit.cover,
                                                      height: 70,
                                                      width: 70,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        'Experience Package Ranu Kumbolo',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'variation : JEEP, Griya Semeru Homestay       x1',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 130),
                                                        child: Text(
                                                          'Rp 700.000',
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFF25BAC2)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '        1 Experience Packaage',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(width: 18),
                                                  Text('Total Pesanan: ',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors
                                                              .grey[700])),
                                                  Text(
                                                    'Rp 700.000',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF25BAC2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '       Segera melakukan pembayaran ',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Colors.grey[700]),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      fixedSize: Size(100, 25),
                                                      primary:
                                                          Color(0xff25bac2),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15)),
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PaymentDetail()),
                                                    ),
                                                    child: Text(
                                                      "More",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ))),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: InkWell(
                            child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                    child: Text(
                                  'iya kh',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))),
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => PaymentOngoing())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: InkWell(
                            child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                    child: Text(
                                  'Yoighh',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))),
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => PaymentFinished())),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
