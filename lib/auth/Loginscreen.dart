import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:login/pages/home/home_page.dart'; //home_page
import 'package:login/auth/register2.dart'; //register
import 'package:login/authrepository/authrepository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../BottomBar.dart';
import 'forgot_pw_page.dart';
import 'package:http/http.dart' as http;

class Loginscreen extends StatefulWidget {
  @override
  _Loginscreenstate createState() => _Loginscreenstate();
}

class _Loginscreenstate extends State<Loginscreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  authrepository repository = authrepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                "Login",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 60,
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.8),
              child: TextButton(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot Password..?",
                    style: TextStyle(color: Color(0xff25bac2)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPasswordPage();
                  }));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(240, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Color(0xff25bac2)),
                onPressed: () async {
                  print("pressed");
                  FocusScope.of(context).unfocus();
                  EasyLoading.show(status: 'loading...');
                  bool response = await repository.login(
                      _emailController.text, _passwordController.text);
                  if (response == true) {
                    EasyLoading.dismiss();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => BottomBar()));
                  } else {
                    EasyLoading.dismiss();
                    ScaffoldMessenger.of(context).showSnackBar(
                        // SnackBar(content: Text("invalid username or password")));
                        SnackBar(content: Text(repository.loginMessage)));
                    print("gagal");
                  }
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20),
                ),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("does'nt have an account..?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return register2();
                      }));
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(color: Color(0xff25bac2)),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> auth() async {
    FocusScope.of(context).unfocus();
    EasyLoading.show(status: 'loading...');

    if (_passwordController.text.isNotEmpty &&
        _emailController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse("http://192.168.252.236:3000/auth/login"),
          body: ({
            'email': _emailController.text,
            'password': _passwordController.text
          }));
      final output = jsonDecode(response.body);
      if (response.statusCode == 200) {
        EasyLoading.dismiss();
        print(output['data']['id']);
        print("auth");
        SharedPreferences storage = await SharedPreferences.getInstance();
        await storage.setString('data', output['data']['email']);
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext ctx) => BottomBar()));
        print(output['data']['email']);
      } else {
        EasyLoading.dismiss();
        print("false");
        ScaffoldMessenger.of(context).showSnackBar(
            // SnackBar(content: Text("invalid username or password")));
            SnackBar(content: Text(output['message'])));
      }
    } else {
      EasyLoading.dismiss();
      print("gagal");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("blank field not allowed")));
    }
  }
}
