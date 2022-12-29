// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:login/pages/home/repository/repository.dart';
import 'package:login/prototype/repository.dart';
import 'package:login/prototype/model.dart';

void main() async {
  runApp(apiGet());
}

class apiGet extends StatelessWidget {
  const apiGet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'coba API get',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: apiGet_data(title: "coba API get"),
    );
  }
}

class apiGet_data extends StatefulWidget {
  apiGet_data({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<apiGet_data> createState() => _apiGet_dataState();
}

class _apiGet_dataState extends State<apiGet_data> {
  List<User> listUser = [];
  Repository repository = Repository();

  getData() async {
    listUser = await repository.getData();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Text(listUser[index].fullName),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: listUser.length),
    );
  }
}
