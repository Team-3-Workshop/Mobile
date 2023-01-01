import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:login/auth/resetPW.dart';
import 'package:login/authrepository/authrepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ForgotPasswordPage extends StatefulWidget {
  // const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();
  authrepository repository = authrepository();
  String id = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff25bac2),
        elevation: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Enter your registered email",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2))
                  ]),
              height: 60,
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff7c94b6),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                // emailCheck();
                EasyLoading.show(status: "loading..");
                FocusScope.of(context).unfocus();
                bool response =
                    await repository.forgotPW(_emailController.text);
                if (response) {
                  EasyLoading.dismiss();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return resetPWPage();
                  }));
                } else {
                  EasyLoading.dismiss();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(repository.forgotPWMessage)));
                }
              },
              style: ElevatedButton.styleFrom(
                  // fixedSize: Size(240, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Color(0xff25bac2)),
              child: Text("Reset Password"))
        ],
      ),
    );
  }

  // Future<void> emailCheck() async {
  //   EasyLoading.show(status: "loading..");
  //   if (_emailController.text.isNotEmpty) {
  //     var response = await http.post(
  //         Uri.parse("http://192.168.252.236:3000/auth/forgot"),
  //         body: ({'email': _emailController.text}));
  //     final output1 = jsonDecode(response.body);
  //     if (response.statusCode == 200) {
  //       print(output1['data']['id']);
  //       EasyLoading.dismiss();
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: Text("Account Found..")));
  //       Navigator.push(context, MaterialPageRoute(builder: (context) {
  //         return resetPWPage(output1['data']['id']);
  //       }));
  //     } else {
  //       EasyLoading.dismiss();
  //       print(output1['message']);
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: Text(output1['message'])));
  //     }
  //   } else {
  //     EasyLoading.dismiss();
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("Blank Field Not Allowed..!")));
  //   }
  // }
}
