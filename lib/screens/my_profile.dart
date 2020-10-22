import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  static const routeName = '/my-profile';
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool _obscureText = true;
  bool _obscureText2 = true;

  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final phoneController = TextEditingController();
  final passController = TextEditingController();
  final cpassController = TextEditingController();

  FocusNode myFocusNode;
  @override
  void initState() {
    super.initState();
    // myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    fnameController.dispose();
    lnameController.dispose();
    phoneController.dispose();
    passController.dispose();
    cpassController.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var device_width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          // padding: EdgeInsets.all(30.0),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  height: 50.0,
                  width: device_width,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 15.0,
                  ),
                  child: Text(
                    "YOUR PERSONAL DATA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter a valid First Name';
                            }
                            return null;
                          },
                          cursorColor: Colors.blue,
                          controller: fnameController,
                          // focusNode: myFocusNode,
                          decoration: InputDecoration(
                              labelText: "First Name",
                              contentPadding: EdgeInsets.all(12.0)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter a valid Last Name';
                            }
                            return null;
                          },
                          cursorColor: Colors.blue,
                          controller: lnameController,
                          // focusNode: myFocusNode,
                          decoration: InputDecoration(
                              labelText: "Last Name",
                              contentPadding: EdgeInsets.all(12.0)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          initialValue: "evansmwenda.em@gmail.com",
                          enabled: false,
                          decoration: InputDecoration(
                              labelText: "E-Mail",
                              contentPadding: EdgeInsets.all(12.0)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          // The validator receives the text that the user has entered.
                          cursorColor: Colors.blue,
                          controller: phoneController,
                          // focusNode: myFocusNode,
                          decoration: InputDecoration(
                              labelText: "Phone Number",
                              contentPadding: EdgeInsets.all(12.0)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 50,
                          width: device_width,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "SAVE",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.orange[600],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter CURRENT password';
                            }
                            return null;
                          },
                          obscureText: _obscureText,
                          cursorColor: Colors.blue,
                          controller: passController,
                          decoration: InputDecoration(
                            labelText: "Current Password",
                            contentPadding: EdgeInsets.all(12.0),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Theme.of(context).primaryColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  //change the state upon click
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter a valid password';
                            }
                            return null;
                          },
                          obscureText: _obscureText2,
                          cursorColor: Colors.blue,
                          controller: cpassController,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                            contentPadding: EdgeInsets.all(12.0),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText2
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Theme.of(context).primaryColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  //change the state upon click
                                  _obscureText2 = !_obscureText2;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 50,
                          width: device_width,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "CHANGE PASSWORD",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.orange[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
