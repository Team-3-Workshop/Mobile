import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_tnbts/pages/BottomBar.dart';

class SplashScreen extends StatefulWidget {
  static const nameRoute = "/splashscreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() async {
    return Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfilePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bromoh.jpg'),
                fit: BoxFit.cover),
          ),
          child: ListView(children: [
            //logo
            SizedBox(height: 115),
            Image.asset(
              'assets/images/storiatour.png',
              height: 100,
              width: 100,
            ),

            //maintext
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Center(
                  child: Text(
                    "STORIA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
                Text(
                  "TOUR",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 35,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 0.1),
            Center(
              child: Text(
                'best reserve deals for TNBTS',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 22,
                    color: Colors.white),
              ),
            ),
            //btn
            SizedBox(height: 260),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(),
              margin: EdgeInsets.all(15),
              child: ElevatedButton(
                child: const Text('Get Started'),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage())),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF25BAC2), shape: StadiumBorder()),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
