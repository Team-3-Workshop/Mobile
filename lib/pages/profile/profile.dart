// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, unnecessary_import

// import 'dart:html';
import 'dart:io';
import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:login/auth/Loginscreen.dart';
import 'package:login/pages/profile/edit_profile.dart'; //edit profile
import 'package:login/pages/profile/tutorial.dart'; //tutorial
import 'package:login/pages/profile/settings.dart'; //settings
import 'package:flutter/material.dart';
import 'package:login/pages/profile/sop.dart';
import 'package:shared_preferences/shared_preferences.dart'; //sop

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 55),
              Row(
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: Text('Dika   ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 37,
                                  color: Colors.black)),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditProfile(
                                            currentUserId: '',
                                          )));
                            },
                            child: Text(
                              'view and edit profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 125),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profil.jpg'),
                          radius: 45,
                        ),
                      ),
                      image != null
                          ? Container(
                              // width: MediaQuery.of(context).size.width,
                              width: 220,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 125),
                                child: ClipOval(
                                  child: Image.file(
                                    image!,
                                    height: 96,
                                    width: 96,
                                    fit: BoxFit.cover,
                                  ),
                                  clipper: MyClip(),
                                ),
                              ))
                          : Container(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(148, 58, 0, 0),
                        child: MaterialButton(
                          onPressed: () async {
                            await getImage();
                          },
                          color: Color(0xFF25BAC2),
                          textColor: Colors.white,
                          child: Icon(
                            Icons.camera_alt,
                            size: 16,
                          ),
                          padding: EdgeInsets.all(10),
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile(
                                      currentUserId: '',
                                    )));
                      },
                      child: Text(
                        'Edit Profile                                 ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Icon(Icons.person_search_rounded,
                      size: 40.0, color: Colors.grey.shade400)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tutorial                                       ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Icon(Icons.auto_stories,
                      size: 40.0, color: Colors.grey.shade400)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sop()));
                      },
                      child: Text(
                        'SOP      ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 189),
                      child: Icon(Icons.info,
                          size: 40.0, color: Colors.grey.shade400)),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const setting()));
                      },
                      child: Text(
                        'Setting                                       ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(Icons.settings,
                        size: 40.0, color: Colors.grey.shade400),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      SharedPreferences storage =
                          await SharedPreferences.getInstance();
                      storage.remove('data');
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext ctx) => Loginscreen()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(left: 214),
                        child: Icon(Icons.logout,
                            size: 40.0, color: Colors.grey.shade400)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 90, 90);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
