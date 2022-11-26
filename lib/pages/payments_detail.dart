import 'package:flutter/material.dart';

class PaymentDetail extends StatefulWidget {
  const PaymentDetail({super.key});

  @override
  State<PaymentDetail> createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(color: Color(0xFF303030)),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF25BAC2)),
        ),
        // centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0.0,
        // automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Color(0xFF25BAC2)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: ListView(
            children: [
              OutlinedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    primary: Color(0xFFFFFFFF),
                  ),
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PaymentDetail())),
                  icon:
                      Icon(Icons.location_on_outlined, color: Colors.redAccent),
                  label: Text(
                    'Alamat Pendaftaran',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xFF303030)),
                  )),
              // InkWell(
              //   child: Container(
              //     height: 250,
              //     width: 350,
              //     decoration: BoxDecoration(
              //       color: Color(0XFFFFFFFF),
              //     ),
              //     child: Text(
              //       'laper bosss',
              //       textAlign: TextAlign.left,
              //       style: TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              //   onTap: () => Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => PaymentDetail()),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
