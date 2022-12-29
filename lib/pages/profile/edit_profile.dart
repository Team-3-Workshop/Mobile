// import 'dart:html';

// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:login/pages/profile/models/http_edit_profile.dart';
import 'package:login/prototype/model.dart'; //model
import 'package:login/prototype/repository.dart'; //repository

class EditProfile extends StatefulWidget {
  final String currentUserId;

  EditProfile({required this.currentUserId});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  // TextEditingController successController = TextEditingController();
  // TextEditingController messageController = TextEditingController();
  // TextEditingController dataController = TextEditingController();
  // bool isLoading = false;
  // late User user;
  // bool _successValid = true;
  // bool _messageValid = true;
  // bool _dataValid = true;

  // @override
  // getUser() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   DocumentSnapshot doc = usersRef.document(widget.currentUserId).get();
  //   user = User.fromDocument(doc);
  //   successController.text = user.firstName;
  //   messageController.text = user.message;
  //   dataController.text = user.data;
  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  // updateProfileData() {
  //   setState(() {
  //     successController.text.trim().length < 3 ||
  //             successController.text.isEmpty
  //         ? _successValid = false
  //         : _successValid = true;
  //     successController.text.trim().length < 3 ||
  //             successController.text.isEmpty
  //         ? _messageValid = false
  //         : _dataValid = true;
  //     successdataler.text.trim().length < 3 ||
  //             successController.text.isEmpty
  //         ? _citizenValid = false
  //         : _citizenValid = true;
  //   });

  //   if (_successValid &&
  //       _messageValid &&
  //       _dataValid &&
  //     usersRef.document(widget.currentUserId).updateData({
  //       "success": successController.text,
  //       "success": messageController.text,
  //       "success": dataController.text,
  //     }));
  //     SnackBar snackBar = SnackBar(content: Text("Profile updated!"));
  //   }
  // }
  HttpEditProfile dataResponse = HttpEditProfile(
      address: 'Data not found',
      citizen: 'Data not found',
      date: 'Data not found',
      firstName: 'Data not found',
      id: 'Data not found',
      fullName: 'Data not found',
      nik: 'Data not found',
      phone: 'Data not found');

  List<User> listUser = [];
  Repository repository = Repository();

  getData() async {
    listUser = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    final responseDisplayName = TextEditingController(
      text: (dataResponse.firstName == null)
          ? 'Data not found'
          : dataResponse.firstName,
    );
    final responseFullName = TextEditingController(
      text: (dataResponse.fullName == null)
          ? 'Data not found'
          : dataResponse.fullName,
    );
    final responseCitizen = TextEditingController(
      text: (dataResponse.citizen == null)
          ? 'Data not found'
          : dataResponse.citizen,
    );
    final responseNIK = TextEditingController(
      text: (dataResponse.nik == null) ? 'Data not found' : dataResponse.nik,
    );
    final responseAddress = TextEditingController(
      text: (dataResponse.address == null)
          ? 'Data not found'
          : dataResponse.address,
    );
    final responsePhone = TextEditingController(
      text:
          (dataResponse.phone == null) ? 'Data not found' : dataResponse.phone,
    );
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color(0xFF25BAC2)),
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            Column(
              children: [
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: const Text('   Edit Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 33,
                            color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/justina.jpg'),
                    radius: 75,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 260),
                            child: Text(
                              "First Name",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              controller: responseDisplayName,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Input your first name here',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 270),
                            child: Text("Full Name"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              controller: responseFullName,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Input your full name here',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 290),
                            child: Text("Citizen"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              controller: responseCitizen,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Input your citizen here (WNA/WNI)',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 310),
                            child: Text("NIK"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              controller: responseNIK,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Input your NIK here',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 280),
                            child: Text("Address"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              controller: responseAddress,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Input your address here',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 290),
                            child: Text("Phone"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              controller: responsePhone,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Input your phone number here',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            HttpEditProfile.connectAPI(
                                    '69ea6e5b-b858-4dd3-beda-f188f4c74c36')
                                .then((value) {
                              setState(() {
                                dataResponse = value;
                              });
                            });
                          }, //ini lom diisi bg
                          child: Text(
                            "Update Profile",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
