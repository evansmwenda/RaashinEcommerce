import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  static const routeName = '/my-profile';
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Center(
        child: Text("This is my profile page"),
      ),
    );
  }
}
