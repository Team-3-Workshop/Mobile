import 'package:flutter/material.dart';
import 'package:ui_tnbts/pages/payments_detail.dart';
import 'package:ui_tnbts/pages/payments_finished.dart';
import 'package:ui_tnbts/pages/payments_ongoing.dart';
import 'package:ui_tnbts/pages/payments_methode.dart';

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
                                      height: 250,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Imuk',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ))),
                                  onTap: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PaymentDetail()),
                                      )),
                              SizedBox(height: 25),
                              InkWell(
                                  child: Container(
                                      height: 250,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Dika',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ))),
                                  onTap: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PaymentDetail()),
                                      )),
                              SizedBox(height: 25),
                              InkWell(
                                  child: Container(
                                      height: 250,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Roni',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ))),
                                  onTap: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PaymentMethode()),
                                      )),
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
