import 'package:flutter/material.dart';

class EditAddress extends StatefulWidget {
  static const routeName = '/edit-address';
  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

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
    addressController.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var device_width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Address"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.green[70],
              ),
              height: MediaQuery.of(context).size.height - 140.0,
              child: Column(
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
                      "EDIT ADDRESS",
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
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter a valid delivery address';
                              }
                              return null;
                            },
                            cursorColor: Colors.blue,
                            controller: addressController,
                            decoration: InputDecoration(
                                labelText: "Delivery Address",
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
                                labelText: "Additional Info",
                                contentPadding: EdgeInsets.all(12.0)),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter a valid Phone Number';
                              }
                              return null;
                            },
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
                          TextFormField(
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter a valid Phone Number';
                              }
                              return null;
                            },
                            cursorColor: Colors.blue,
                            controller: phoneController,
                            // focusNode: myFocusNode,
                            decoration: InputDecoration(
                                labelText: "Phone Number",
                                contentPadding: EdgeInsets.all(12.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orange[800],
                  child: Text(
                    "ADD SAVE CHANGES",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
