import 'package:flutter/material.dart';

class PaymentOngoingRanuRegulo extends StatefulWidget {
  // const PaymentOngoingRanuRegulo({super.key});

  @override
  State<PaymentOngoingRanuRegulo> createState() =>
      _PaymentOngoingRanuReguloState();
}

class _PaymentOngoingRanuReguloState extends State<PaymentOngoingRanuRegulo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Checkout  ',
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
          padding: const EdgeInsets.only(top: 4),
          child: ListView(
            children: [
              SizedBox(height: 6),
              OutlinedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  primary: Color(0xFFFFFFFF),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          scrollable: true,
                          title: Text('Alamat Pendaftaran'),
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Name',
                                      icon: Icon(Icons.account_box),
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'No. Handphone',
                                      icon: Icon(Icons.aod_rounded),
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Address',
                                      icon: Icon(Icons.home),
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Citizenship',
                                      icon: Icon(Icons.badge_outlined),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF25BAC2),
                                ),
                                child: Text("Submit"),
                                onPressed: () => Navigator.of(context).pop()
                                // onPressed: () => Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //         builder: (context) => PaymentDetailRanuRegulo())),
                                ),
                          ],
                        );
                      });
                },
                icon: Icon(Icons.location_on_outlined, color: Colors.redAccent),
                label: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Alamat Pendaftaran                                                               ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF303030)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Dwi Nafis Mahardika | (+62) 813-5975-2945                                ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF303030), fontSize: 13),
                    ),
                    Text(
                      'PERUMAHAN PONDOK BAMBU BLOK O3, RT.1/RW.8 KEBON SARI,',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF303030), fontSize: 13),
                    ),
                    Text(
                      'SUMBER SARI, KAB. JEMBER, JAWA TIMUR,WNI                                 ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF303030), fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFFFFFFFF), width: 15)),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/ranu regulo.jpg',
                                  fit: BoxFit.cover,
                                  height: 450, // set your height
                                  width: MediaQuery.of(context).size.width,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "RANU REGULO                                                                          ",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "variation : JEEP, Griya Semeru Homestay,                                 ",
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 13),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Rp 700.000                                                                      X 5   ",
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 13),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
              SizedBox(height: 5),
              OutlinedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  primary: Color(0xFFFFFFFF),
                ),
                onPressed: () {
                  // showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return AlertDialog(
                  //         scrollable: true,
                  //         title: Text('Rincian Pembayaran'),
                  //         content: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Form(
                  //             child: Column(
                  //               children: <Widget>[
                  //                 TextFormField(
                  //                   decoration: InputDecoration(
                  //                     labelText: 'Name',
                  //                     icon: Icon(Icons.account_box),
                  //                   ),
                  //                 ),
                  //                 TextFormField(
                  //                   decoration: InputDecoration(
                  //                     labelText: 'No. Handphone',
                  //                     icon: Icon(Icons.aod_rounded),
                  //                   ),
                  //                 ),
                  //                 TextFormField(
                  //                   decoration: InputDecoration(
                  //                     labelText: 'Address',
                  //                     icon: Icon(Icons.home),
                  //                   ),
                  //                 ),
                  //                 TextFormField(
                  //                   decoration: InputDecoration(
                  //                     labelText: 'Citizenship',
                  //                     icon: Icon(Icons.badge_outlined),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         actions: [
                  //           ElevatedButton(
                  //               style: ElevatedButton.styleFrom(
                  //                 primary: Color(0xFF25BAC2),
                  //               ),
                  //               child: Text("Submit"),
                  //               onPressed: () => Navigator.of(context).pop()
                  //               // onPressed: () => Navigator.of(context).push(
                  //               //     MaterialPageRoute(
                  //               //         builder: (context) => PaymentDetailRanuRegulo())),
                  //               ),
                  //         ],
                  //       );
                  //     });
                },
                icon:
                    Icon(Icons.article_outlined, color: Colors.yellow.shade600),
                label: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rincian Pembayaran                                                               ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF303030)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Subtotal untuk Product                     Rp 200.000                                ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[700], fontSize: 13),
                    ),
                    Text(
                      'Subtotal untuk Transport                  Rp 500.000                                ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[700], fontSize: 13),
                    ),
                    Text(
                      'Total Diskon Pengirimaan                 Rp 0.000                                ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[700], fontSize: 13),
                    ),
                    Text(
                      'Total Diskon Transportasi                  Rp 0.000                                ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[700], fontSize: 13),
                    ),
                    Row(
                      children: [
                        Text(
                          'Total pembayaran',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Color(0xFF303030), fontSize: 16),
                        ),
                        Text(
                          '                   Rp 700.000',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Color(0xFF25BAC2), fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Expanded(
                      child: DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Center(
                          child: Column(
                            children: [
                              Text(''),
                              Text('                       Total pembayaran'),
                              Text(
                                '                           Rp 700.000',
                                style: TextStyle(
                                    color: Color(0xFF25BAC2), fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xFF25BAC2), //<-- SEE HERE
                      ),
                      child: Text(
                        '    Buat pesanan    ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
