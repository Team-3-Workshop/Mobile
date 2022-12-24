// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
// import 'package:login/prototype/api_profile.dart';
import 'package:login/splash_screen.dart';
// import 'dart:io';
import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:login/auth/Loginscreen.dart';
// import 'package:login/auth/profile2.dart';
import 'package:login/BottomBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences storage = await SharedPreferences.getInstance();
  var data = storage.getString('data');
  print(data);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: data == null
        ? const SplashScreen()
        : const BottomBar(), //profile page itu bottombar
    builder: EasyLoading.init(),
  ));
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
