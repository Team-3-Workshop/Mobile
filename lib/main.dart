import 'package:flutter/material.dart';
import 'package:ui_tnbts/startup_page.dart';
import 'package:ui_tnbts/pages/payments_methode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentMethode(),
    );
  }
}
