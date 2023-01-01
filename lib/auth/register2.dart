import 'dart:async';

import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:login/authrepository/authrepository.dart';

class register2 extends StatefulWidget {
  // const register2({super.key});

  @override
  State<register2> createState() => _register2State();
}

class _register2State extends State<register2> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _nikController = TextEditingController();
  final _addresController = TextEditingController();
  final _dateController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String citizen = "";
  String role = "";
  authrepository loginrepository = authrepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff25bac2),
        ),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
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
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 2))
                          ]),
                      height: 80,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Text(
                              "Choose Your Citizen",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: RadioListTile(
                                    title: Text("WNA"),
                                    value: "WNA",
                                    groupValue: citizen,
                                    onChanged: (value) {
                                      setState(() {
                                        citizen = value.toString();
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RadioListTile(
                                    title: Text("WNI"),
                                    value: "WNI",
                                    groupValue: citizen,
                                    onChanged: (value) {
                                      setState(() {
                                        citizen = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       print(citizen);
                          //       print(_firstNameController.text);
                          //     },
                          //     child: Text("print"))
                        ],
                      )),
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
                      keyboardType: TextInputType.datetime,
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
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1945),
                            lastDate: DateTime(3000));
                        if (pickedDate != null) {
                          setState(() {
                            _dateController.text =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                          });
                        }
                      },
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
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 2))
                          ]),
                      height: 80,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Text(
                              "Choose Your Role",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: RadioListTile(
                                    title: Text("user"),
                                    value: "user",
                                    groupValue: role,
                                    onChanged: (value) {
                                      setState(() {
                                        role = value.toString();
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RadioListTile(
                                    title: Text("admin"),
                                    value: "admin",
                                    groupValue: role,
                                    onChanged: (value) {
                                      setState(() {
                                        role = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       print(citizen);
                          //       print(_firstNameController.text);
                          //     },
                          //     child: Text("print"))
                        ],
                      )),
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
                    onPressed: () async {
                      // postData();
                      print("pressed");
                      FocusScope.of(context).unfocus();
                      EasyLoading.show(status: 'loading...');
                      bool response = await loginrepository.register3(
                          _firstNameController.text,
                          _lastNameController.text,
                          _fullNameController.text,
                          citizen,
                          _nikController.text,
                          _addresController.text,
                          _dateController.text,
                          _phoneController.text,
                          _emailController.text,
                          _passwordController.text,
                          role);
                      if (response == true) {
                        EasyLoading.showSuccess("success..");
                      } else {
                        EasyLoading.dismiss();
                        ScaffoldMessenger.of(context).showSnackBar(
                            // SnackBar(content: Text("invalid username or password")));
                            SnackBar(
                                content:
                                    Text(loginrepository.registerMessage)));
                      }
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
        await http.post(Uri.parse("http://192.168.252.236:3000/auth/signup"),
            body: ({
              'firstName': _firstNameController.text,
              'lastName': _lastNameController.text,
              'fullName': _fullNameController.text,
              'citizen': citizen,
              'nik': _nikController.text,
              'address': _addresController.text,
              'date': _dateController.text,
              'phone': _phoneController.text,
              'email': _emailController.text,
              'password': _passwordController.text,
              'role': role
            }));

    final output = jsonDecode(response.body);
    print("wait");
    if (response.statusCode == 201) {
      EasyLoading.showSuccess('Success!');
      Navigator.of(context).pop();
    } else {
      EasyLoading.dismiss();

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(output['message'])));
    }
  }
}
