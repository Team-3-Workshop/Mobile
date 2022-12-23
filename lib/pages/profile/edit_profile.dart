// import 'dart:html';

import 'package:flutter/material.dart';
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
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 246),
                            child: Text("Display Name"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Display Name',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 261),
                            child: Text("Full Name"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Full Name',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 287),
                            child: Text("Citizen"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Citizen',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 310),
                            child: Text("NIK"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'NIK',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 280),
                            child: Text("Address"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Address',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 238),
                            child: Text("Phone Number"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Phone Number',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {}, //ini lom diisi bg
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
                // ListView.separated(
                //     itemBuilder: (context, index) {
                //       return Container(
                //         child: Text(listUser[index].data),
                //       );
                //     },
                //     separatorBuilder: (context, index) {
                //       return Divider();
                //     },
                //     itemCount: listUser.length)
              ],
            ),
            // Container(
            //   child: ListView(
            //     children: <Widget>[
            //       Column(
            //         children: [
            //           SizedBox(height: 55),
            //           Container(
            //             child: Padding(
            //               padding: const EdgeInsets.only(left: 1),
            //               child: Text('Edit Profile',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 37,
            //                       color: Colors.black)),
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.all(10),
            //             child: CircleAvatar(
            //               backgroundImage:
            //                   AssetImage('assets/images/justina.jpg'),
            //               radius: 45,
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Container(
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 1),
            //                   child: Text('Username',
            //                       style: TextStyle(color: Colors.grey[300])),
            //                 ),
            //                 const TextField(
            //                   obscureText: true,
            //                   decoration: InputDecoration(
            //                     labelText: 'Username',
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Container(
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 1),
            //                   child: Text('Email',
            //                       style: TextStyle(color: Colors.grey[300])),
            //                 ),
            //                 const TextField(
            //                   obscureText: true,
            //                   decoration: InputDecoration(
            //                     labelText: 'Email',
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Container(
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 1),
            //                   child: Text('Password',
            //                       style: TextStyle(color: Colors.grey[300])),
            //                 ),
            //                 const TextField(
            //                   obscureText: true,
            //                   decoration: InputDecoration(
            //                     labelText: 'Password',
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Container(
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 1),
            //                   child: Text('NIK',
            //                       style: TextStyle(color: Colors.grey[300])),
            //                 ),
            //                 const TextField(
            //                   obscureText: true,
            //                   decoration: InputDecoration(
            //                     labelText: 'NIK',
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Container(
            //             child: Row(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 1),
            //                   child: Text('Address',
            //                       style: TextStyle(color: Colors.grey[300])),
            //                 ),
            //                 const TextField(
            //                   obscureText: true,
            //                   decoration: InputDecoration(
            //                     labelText: 'Address',
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ],
        )));
  }
}
