import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/MorePage/Bromo.dart';
import 'package:login/imageLink/imageLink.dart';

class ranuRegulo2 extends StatelessWidget {
  const ranuRegulo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: "rr2",
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(imgLink.ranuRegulo2),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
