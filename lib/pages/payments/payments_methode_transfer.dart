import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login/pages/payments/success.dart';

class PaymentMethodeTransfer extends StatefulWidget {
  // const PaymentMethodeTransfer({super.key});

  @override
  State<PaymentMethodeTransfer> createState() => _PaymentMethodeState();
}

class _PaymentMethodeState extends State<PaymentMethodeTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Payments  ',
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
              SizedBox(height: 4),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/Logo-BCA_Biru.png',
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Bank BCA',
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                        '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                        style: TextStyle(color: Colors.grey[300])),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kode Rekening                                                            ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '5379 4130 4392 1897',
                      style: TextStyle(fontSize: 26, color: Color(0xFF25BAC2)),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Text('      Jumlah Harus Dibayar'),
                        SizedBox(
                          width: 95,
                        ),
                        Text('Rp 700.000',
                            style: TextStyle(
                                color: Color(0xFF25BAC2), fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 25,
                  child: Text('      Instruksi Pembayaran',
                      style: TextStyle(color: Colors.grey[700]))),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(Icons.looks_one_rounded, color: Colors.grey),
                          Text('Pilih Metode Pembayaran pada halaman',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Text(
                        'Checkout                                                      ',
                        style: TextStyle(color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(Icons.looks_two_rounded, color: Colors.grey),
                          Text('Pilih Transfer Bank > pilih Bank BCA ',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Text(
                        '(Dicek Otomatis)                                           ',
                        style: TextStyle(color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(Icons.looks_3_rounded, color: Colors.grey),
                          Text('Pilih Konfirmasi > pilih Buat Pesanan',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(Icons.looks_4_rounded, color: Colors.grey),
                          Text('Lakukan pembayaran mengikuti petunjuk ',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Text('   transfer yang tertera sesuai dengan metode',
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('       transfer yang dipilih (mBanking/iBanking/ATM)',
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(height: 140),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                // decoration: BoxDecoration(),
                // margin: EdgeInsets.all(15),
                child: ElevatedButton(
                  child: const Text('OK'),
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Success())),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF25BAC2),
                      shape: StadiumBorder()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
