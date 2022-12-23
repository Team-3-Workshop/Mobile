// import 'dart:convert';

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login/prototype/model.dart'; //model

class Repository {
  final _baseUrl =
      '192.168.1.7:3000/api/users/a43c3b94-21d3-42f2-8fe4-a2229a6006af';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body)["data"];
        List<User> user = it.map((e) => User.fromJson(e)).toList();
        return user;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
