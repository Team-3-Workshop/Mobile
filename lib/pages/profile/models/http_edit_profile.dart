// ignore_for_file: avoid_print, unused_import, prefer_interpolation_to_compose_strings

import 'dart:convert';
import "package:login/authrepository/authrepository.dart";
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HttpEditProfile {
  String firstName, fullName, citizen, nik, address, date, phone;
  // String jsonstring =
  //     '{"error":false,"msg":"",aa"data":[{"name":"Canada","capital":"Ottawa"}]}';
  // var jsonobj = jsonDecode("jsonstring");
  HttpEditProfile({
    // required this.id,
    required this.firstName,
    required this.fullName,
    required this.citizen,
    required this.nik,
    required this.address,
    required this.date,
    required this.phone,
  });

  static Future<HttpEditProfile> connectAPI(
      // String id,
      String firstName,
      String fullName,
      String citizen,
      String nik,
      String address,
      String phone) async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    var id = storage.getString('data');
    print(id);
    Uri url = Uri.parse("http://192.168.1.10:3000/api/users/" + id.toString());

    var hasilResponse = await http.patch(url, body: {
      // "id": id,
      "firstName": firstName,
      "fullName": fullName,
      "citizen": citizen,
      "nik": nik,
      "address": address,
      "phone": phone,
    });

    var data = (jsonDecode(hasilResponse.body))["data"];

    // try {
    //   var jsonobj = jsonDecode("jsonstring");
    // } catch (e) {
    //   print(e);
    // }

    print(data);

    return HttpEditProfile(
        // id: data["id"],
        firstName: data["firstName"],
        fullName: data["fullName"],
        citizen: data["citizen"],
        nik: data["nik"],
        address: data["address"],
        date: data["date"],
        phone: data["phone"]);
    // );
  }
}
