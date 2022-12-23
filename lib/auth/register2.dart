import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:login/pages/home/repository/repository.dart'; //repository
import 'package:http/http.dart' as http;
import 'dart:convert';

class register2 extends StatefulWidget {
  const register2({super.key});

  @override
  State<register2> createState() => _register2State();
}

class _register2State extends State<register2> {
  Repository repository = Repository();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _citizenController = TextEditingController();
  final _nikController = TextEditingController();
  final _addresController = TextEditingController();
  final _dateController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _roleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Sign Up",
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _firstNameController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "First Name",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _lastNameController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Last Name",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _fullNameController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Full Name",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _citizenController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Citizen",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _nikController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "NIK",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _addresController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Addres",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _dateController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Date",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _phoneController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "Phone",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _roleController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff7c94b6),
                      ),
                      hintText: "role",
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(240, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Color(0xff25bac2)),
                onPressed: () {
                  postData();
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20),
                ),
              )),
            ),
            SizedBox(
              height: 20,
            )
          ]),
    ));
  }

  Future<void> postData() async {
    EasyLoading.show(status: 'loading...');

    // print("oke");
    // // Map<String, String> header = {
    // //   "Content-Type": "application/x-www-form-urlencoded"
    // // };
    // var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    // // print(_dateController.text);
    var response =
        await http.post(Uri.parse("http://192.168.103.236:3000/auth/signup"),
            body: ({
              'firstName': _firstNameController.text,
              'lastName': _lastNameController.text,
              'fullName': _fullNameController.text,
              'citizen': _citizenController.text,
              'nik': _nikController.text,
              'address': _addresController.text,
              'date': _dateController.text,
              'phone': _phoneController.text,
              'email': _emailController.text,
              'password': _passwordController.text,
              'role': _roleController.text
            }));

    final output = jsonDecode(response.body);
    if (response.statusCode == 201) {
      EasyLoading.showSuccess('Success!');
    } else {
      EasyLoading.dismiss();

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(output['message'])));
    }
  }
}
