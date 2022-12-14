// import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
// ignore_for_file: prefer_const_constructors

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/home/home_page.dart';
// import 'package:login/pages/payments.dart';
import 'package:login/pages/payments/payments.dart';
import 'package:login/pages/profile/profile.dart';
// import 'Page/home_page.dart';
// import 'Page/sop.dart';
// import 'Page/tutorial.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    payments(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = BottomBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens.elementAt(currentTab)),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
          child: GNav(
            backgroundColor: Colors.grey.shade200,
            color: Colors.grey[500],
            activeColor: Color(0xFF25BAC2),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
              ),
              // GButton(
              //   icon: Icons.info,
              //   text: 'SOP',
              //   onPressed: () {
              //     setState(() {
              //       currentTab = 1;
              //     });
              //   },
              // ),
              // GButton(
              //   icon: Icons.auto_stories,
              //   text: 'Tutorial',
              //   onPressed: () {
              //     setState(() {
              //       currentTab = 2;
              //     });
              //   },
              // ),
              GButton(
                icon: Icons.account_balance_wallet,
                text: 'Payments',
                onPressed: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                onPressed: () {
                  setState(() {
                    currentTab = 2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
