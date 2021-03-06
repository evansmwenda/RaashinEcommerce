import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:raashin/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'package:raashin/constants/constants.dart' as Constants;

class Register extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool _obscureText = true;

  final pinController = TextEditingController();
  final pinConfirmController = TextEditingController();
  final idController = TextEditingController();

  FocusNode myFocusNode;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    pinController.dispose();
    pinConfirmController.dispose();
    idController.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //get the id_number if from registration

    return Scaffold(
      appBar: AppBar(
        title: Text("Raashin"),
        // Set the background color of the App Bar
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView(
              padding: EdgeInsets.all(30.0),
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  child: Image(
                    image: AssetImage('images/connectdark.png'),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                _myRegisterForm(),
              ],
            ),
    );
  }

  Widget _myRegisterForm(){
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a valid E-mail Address';
              }
              return null;
            },
            cursorColor: Colors.blue,
            controller: idController,
            focusNode: myFocusNode,
            decoration: InputDecoration(
                labelText: "Email Address",
                contentPadding: EdgeInsets.all(12.0)),
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
            obscureText: _obscureText,
            cursorColor: Colors.blue,
            controller: pinController,
            decoration: InputDecoration(
              labelText: "Password",
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
//                    SizedBox(
//                      height: 5.0,
//                    ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a valid confirm password';
              }
              return null;
            },
            onFieldSubmitted: (_) => _registerUser(),
            obscureText: _obscureText,
            cursorColor: Colors.blue,
            controller: pinConfirmController,
            decoration: InputDecoration(
              labelText: "Confirm Password",
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

          Container(
            margin: EdgeInsets.only(
                left: 30.0, right: 30.0, top: 20.0),
//                      width: 300.0,
//                      height: 50.0,
            child: SizedBox(
              width: double.infinity,
              height: 50.0, // match_parent
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                color: Colors.blue,
                onPressed: () {
                  _registerUser();
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Already have an account?",
                style: TextStyle(fontSize: 18.0),
              ),
              InkWell(
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _registerUser() async {
    // Validate returns true if the form is valid, otherwise false.
    if (_formKey.currentState.validate()) {
      /***Disable the focus from the text form fields when you submit to prevent
       *failed assertion bug <optimized out> is not true
       * */
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }

      //pin must be 4 digits
      if (pinController.text.length < 4) {
        Toast.show("Please enter a valid pin", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      } else {
        setState(() => _isLoading = true);

        _makePostRequest(idController.text, pinController.text);
      }
    }
  }

  Future<void> _makePostRequest(String id_number, String pin) {
    // set up POST request arguments
    const url = Constants.LOGIN_URL;
    Map<String, String> headers = {"Content-type": "application/json"};

    // make POST request
    return http
        .post(
      url,
      headers: headers,
      //body: json_data,
      body: jsonEncode({
        "id_number": id_number,
        "password": pin,
      }),
    )
        .then((response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        //credentials correct->dismiss spinner
        setState(() => _isLoading = false);
        Toast.show("Login Successful", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

        _saveToken(json.decode(response.body)["access_token"]);

//        Navigator.pushNamed(context, Homepage.routeName,
//            arguments:
//            AuthTokenArgs(json.decode(response.body)["access_token"]));
      } else {
        //dismiss spinner
        setState(() => _isLoading = false);
        var msg = json.decode(response.body)["message"];
        print("error" + json.decode(response.body)["message"]);
        Toast.show(msg, context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      }
      // Navigator.pushNamed(context, Homepage.routeName);
    }).catchError((error) {
      setState(() => _isLoading = false);
      Toast.show("An error occurred, please try again", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      print(error.toString());
    });
  }

  void _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();

// set value
    prefs.setString('token', token);
  }
}

class AuthTokenArgs {
  final String auth_token;

  AuthTokenArgs(this.auth_token);
}
