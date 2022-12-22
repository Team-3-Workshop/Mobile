import 'dart:ui';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_tnbts/pages/BottomBar.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 750,
            child: Column(
              children: [
                SizedBox(
                  height: 135,
                ),
                Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_jbrw3hcz.json'),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  child: Text(
                    'Successful',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Color(0xFF303030)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  child: Text(
                    'Your payment was done succesfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Color(0xFF808080)),
                  ),
                ),
                SizedBox(
                  height: 135,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 24.0),
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color(0xFF25BAC2),
                    ),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProfilePage())),
                    child: Text(
                      'OK',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          //   child: Text(
          //     'Successful',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(fontSize: 18, color: Color(0xFF303030)),
          //   ),
          // ),
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          //   child: Text(
          //     'Your payment was done succesfully',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(fontSize: 18, color: Color(0xFF808080)),
          //   ),
          // ),
        ],
      ),
    );
  }
}
