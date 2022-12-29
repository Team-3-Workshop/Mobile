// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login/prototype/model.dart'; //model

class Repository {
  final _baseUrl = 'http://192.168.0.106:3000/api/users//';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        // print(response.body);
        Iterable it = jsonDecode(response.body);
        List<User> user = it.map((e) => User.fromJson(e)).toList();
        return user;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
