import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpEditProfile {
  String id, firstName, fullName, citizen, nik, address, date, phone;

  HttpEditProfile({
    required this.id,
    required this.firstName,
    required this.fullName,
    required this.citizen,
    required this.nik,
    required this.address,
    required this.date,
    required this.phone,
  });

  static Future<HttpEditProfile> connectAPI(String id) async {
    Uri url = Uri.parse("http://192.168.1.9:3000/api/users/" + id);

    var hasilResponse = await http.patch(url, body: {});

    var data = (json.decode(hasilResponse.body))["data"];

    print(data);

    return HttpEditProfile(
      id: data["id"],
      firstName: data["firstName"],
      fullName: data["fullName"],
      citizen: data["citizen"],
      nik: data["nik"],
      address: data["address"],
      date: data["date"],
      phone: data["phone"],
    );
  }
  //ini mau buaat patch API jadi abaikan
  // connectAPI(String id, String firstName, String fullName, String citizen,
  //     String nik, String address, String date, phone) {
  //   var url = "http://192.168.1.9:3000/api/users/";

  //   http.patch(url)
  // }
}
