// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_tnbts/prototype/api_profile.dart';
// import 'package:ui_tnbts/pages/calender.dart';
// import 'package:ui_tnbts/pages/startup.dart';
import 'package:ui_tnbts/pages/splash_screen.dart';
import 'dart:io';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
