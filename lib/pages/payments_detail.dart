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
          padding: const EdgeInsets.only(top: 5),
          child: ListView(
            children: [
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
                                //         builder: (context) => PaymentDetail())),
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
                      'SUMBER SARI, KAB. JEMBER, JAWA TIMUR, INA                                 ',
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
                                  'assets/images/ranu_kumbolo.jpg',
                                  fit: BoxFit.cover,
                                  height: 450, // set your height
                                  width: MediaQuery.of(context).size.width,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "RANU KUMBOLO                                                                    ",
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
                                  "Rp 700.000                                                                            X 5   ",
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
              Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
