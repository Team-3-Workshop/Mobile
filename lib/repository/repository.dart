import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Repository {
  final _baseUrl = 'http://192.168.55.236:3000';
  

  Future<bool> signUp(
      {firstName,
      lastName,
      fullName,
      citizen,
      nik,
      addres,
      date,
      phone,
      email,
      password,
      role}) async {
    var response = await http.post(Uri.parse('$_baseUrl/auth/signup'), body: {
      'firstName': firstName,
      'lastName': lastName,
      'fullName': fullName,
      'citizen': citizen,
      'nik': nik,
      'address': addres,
      'date': date,
      'phone': phone,
      'email': email,
      'password': password,
      'role': role
    });

    if (response.statusCode == 201) {
      // var result = json.decode(response.body);
      // print(response);
      // return true;
      print("OK");
      return true;
    } else {
      // throw response
      return false;
    }
  }
}
