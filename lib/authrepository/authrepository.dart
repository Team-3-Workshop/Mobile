import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../BottomBar.dart';

class authrepository {
  final _baseUrl = "http://192.168.1.10:3000";

  String loginMessage = "";
  String registerMessage = "";
  String forgotPWMessage = "";
  String resetPWMessage = "";
  String connectionFail = "";

  //login
  Future login(String email, String password) async {
    try {
      final response = await http.post(Uri.parse(_baseUrl + '/auth/login'),
          body: {"email": email, "password": password});
      final output = jsonDecode(response.body);
      if (response.statusCode == 200) {
        SharedPreferences storage = await SharedPreferences.getInstance();
        await storage.setString('data', output['data']['id']);
        var data = storage.getString('data');
        print("login as $data");
        return true;
      } else {
        loginMessage = output['message'];
        // print(output['message']);
        return false;
      }
    } catch (e) {
      connectionFail = e.toString();
      print(e.toString());
    }
  }

//register
  Future register3(
      String firstname,
      String lastname,
      String fullname,
      String citizen,
      String nik,
      String addres,
      String date,
      String phone,
      String email,
      String password,
      String role) async {
    try {
      final response = await http.post(Uri.parse(_baseUrl + '/auth/signup'),
          body: ({
            "firstName": firstname,
            "lastName": lastname,
            "fullName": fullname,
            "citizen": citizen,
            "nik": nik,
            "address": addres,
            "date": date,
            "phone": phone,
            "email": email,
            "password": password,
            "role": role,
          }));
      final output = jsonDecode(response.body);
      if (response.statusCode == 201) {
        return true;
      } else {
        registerMessage = output['message'];
        return false;
      }
    } catch (e) {
      // print(e.toString());
      connectionFail = e.toString();
      print(connectionFail);
    }
  }

//forgotPW
  Future forgotPW(String email) async {
    try {
      final response = await http
          .post(Uri.parse(_baseUrl + '/auth/forgot'), body: {"email": email});

      final output = jsonDecode(response.body);

      if (response.statusCode == 200) {
        SharedPreferences resetPWid = await SharedPreferences.getInstance();
        await resetPWid.setString('id', output['data']['id']);
        return true;
      } else {
        forgotPWMessage = output['message'];
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

//resetPW
  Future resetPW(String password) async {
    SharedPreferences resetPWid = await SharedPreferences.getInstance();
    var data = resetPWid.getString('id');
    print(data);
    final response = await http.post(Uri.parse(_baseUrl + '/auth/reset'),
        body: {"id": data, "password": password});
    final output = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return true;
    } else {
      resetPWMessage = output['message'];
      return false;
    }
  }
}
