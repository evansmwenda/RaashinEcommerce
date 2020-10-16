import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CartDetails extends StatefulWidget {
  static const routeName = '/cartdetails';
  @override
  _CartDetailsState createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  final idController = TextEditingController(text: "1");


  FocusNode myFocusNode;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    idController.text = "1";
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    super.dispose();
    myFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              // decoration: BoxDecoration(color: Colors.redAccent),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10.0),
                              // decoration: BoxDecoration(
                              //   color: Colors.redAccent,
                              // ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ZB-Rocker Thunder XL-Portable-Bluetooth",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "KSh 469",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  new RichText(
                                    text: new TextSpan(
                                      text: '',
                                      children: <TextSpan>[
                                        new TextSpan(
                                          text: "KSh 929",
                                          style: new TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18.0,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                        new TextSpan(text: "    "),
                                        new TextSpan(
                                            text: '-49%',
                                            style: TextStyle(
                                              backgroundColor:
                                                  Colors.orange[50],
                                              color: Colors.orange,
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              Container(
                                width: 1,
                                height: 25,
                                color: Colors.grey,
                              ),
                              FlatButton(
                                onPressed: () {
                                  print("clicked remove item");
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.dangerous,
                                      color: Colors.orange[800],
                                    ),
                                    Text(
                                      "REMOVE",
                                      style:
                                          TextStyle(color: Colors.orange[800]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 35,
                                child: Center(
                                  child: TextFormField(

                                    textAlign: TextAlign.center,
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter a valid number';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.orange[800],
                                    controller: idController,
                                    focusNode: myFocusNode,
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                    // decoration: InputDecoration(
                                    //     // labelText: "Email Address",
                                    //
                                    //     contentPadding: EdgeInsets.all(12.0),),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              // decoration: BoxDecoration(color: Colors.redAccent),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10.0),
                              // decoration: BoxDecoration(
                              //   color: Colors.redAccent,
                              // ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ZB-Rocker Thunder XL-Portable-Bluetooth",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "KSh 469",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  new RichText(
                                    text: new TextSpan(
                                      text: '',
                                      children: <TextSpan>[
                                        new TextSpan(
                                          text: "KSh 929",
                                          style: new TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18.0,
                                            decoration:
                                            TextDecoration.lineThrough,
                                          ),
                                        ),
                                        new TextSpan(text: "    "),
                                        new TextSpan(
                                            text: '-49%',
                                            style: TextStyle(
                                              backgroundColor:
                                              Colors.orange[50],
                                              color: Colors.orange,
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              Container(
                                width: 1,
                                height: 25,
                                color: Colors.grey,
                              ),
                              FlatButton(
                                onPressed: () {
                                  print("clicked remove item");
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.dangerous,
                                      color: Colors.orange[800],
                                    ),
                                    Text(
                                      "REMOVE",
                                      style:
                                      TextStyle(color: Colors.orange[800]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 35,
                                child: Center(
                                  child: TextFormField(

                                    textAlign: TextAlign.center,
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter a valid number';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.orange[800],
                                    controller: idController,
                                    focusNode: myFocusNode,
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                    // decoration: InputDecoration(
                                    //     // labelText: "Email Address",
                                    //
                                    //     contentPadding: EdgeInsets.all(12.0),),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              // decoration: BoxDecoration(color: Colors.redAccent),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10.0),
                              // decoration: BoxDecoration(
                              //   color: Colors.redAccent,
                              // ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ZB-Rocker Thunder XL-Portable-Bluetooth",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "KSh 469",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  new RichText(
                                    text: new TextSpan(
                                      text: '',
                                      children: <TextSpan>[
                                        new TextSpan(
                                          text: "KSh 929",
                                          style: new TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18.0,
                                            decoration:
                                            TextDecoration.lineThrough,
                                          ),
                                        ),
                                        new TextSpan(text: "    "),
                                        new TextSpan(
                                            text: '-49%',
                                            style: TextStyle(
                                              backgroundColor:
                                              Colors.orange[50],
                                              color: Colors.orange,
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              Container(
                                width: 1,
                                height: 25,
                                color: Colors.grey,
                              ),
                              FlatButton(
                                onPressed: () {
                                  print("clicked remove item");
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.dangerous,
                                      color: Colors.orange[800],
                                    ),
                                    Text(
                                      "REMOVE",
                                      style:
                                      TextStyle(color: Colors.orange[800]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 35,
                                child: Center(
                                  child: TextFormField(

                                    textAlign: TextAlign.center,
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter a valid number';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.orange[800],
                                    controller: idController,
                                    focusNode: myFocusNode,
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                    // decoration: InputDecoration(
                                    //     // labelText: "Email Address",
                                    //
                                    //     contentPadding: EdgeInsets.all(12.0),),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6.0),
              // decoration: BoxDecoration(color: Colors.redAccent),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10.0),
                              // decoration: BoxDecoration(
                              //   color: Colors.redAccent,
                              // ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ZB-Rocker Thunder XL-Portable-Bluetooth",
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "KSh 469",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  new RichText(
                                    text: new TextSpan(
                                      text: '',
                                      children: <TextSpan>[
                                        new TextSpan(
                                          text: "KSh 929",
                                          style: new TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18.0,
                                            decoration:
                                            TextDecoration.lineThrough,
                                          ),
                                        ),
                                        new TextSpan(text: "    "),
                                        new TextSpan(
                                            text: '-49%',
                                            style: TextStyle(
                                              backgroundColor:
                                              Colors.orange[50],
                                              color: Colors.orange,
                                              fontSize: 17.0,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              Container(
                                width: 1,
                                height: 25,
                                color: Colors.grey,
                              ),
                              FlatButton(
                                onPressed: () {
                                  print("clicked remove item");
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.dangerous,
                                      color: Colors.orange[800],
                                    ),
                                    Text(
                                      "REMOVE",
                                      style:
                                      TextStyle(color: Colors.orange[800]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 35,
                                child: Center(
                                  child: TextFormField(

                                    textAlign: TextAlign.center,
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter a valid number';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.orange[800],
                                    controller: idController,
                                    focusNode: myFocusNode,
                                    style: TextStyle(
                                      fontSize: 19.0,
                                    ),
                                    // decoration: InputDecoration(
                                    //     // labelText: "Email Address",
                                    //
                                    //     contentPadding: EdgeInsets.all(12.0),),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.orange[800],
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              // decoration: BoxDecoration(color: Colors.redAccent),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "KSh 3,000",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60.0,
                        // padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: 0.0,right:0.0, top: 15.0,bottom: 5.0),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.orange[800],
                          child: Text(
                            "COMPLETE YOUR ORDER",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                        ),
                        // padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: 5.0,right:5.0, top: 5.0,bottom:15.0),
                        child: OutlineButton(
                            onPressed: () {
                              print('Received click');
                            },
                          borderSide: BorderSide(
                                color: Colors.grey, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 1.7, //width of the border
                              ),
                            child: Text(
                              "CALL TO ORDER",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.orange[800],
                              ),
                            ),
                          ),
                          // OutlinedButton(
                          //   onPressed: () {},
                          //   borderSide: BorderSide(
                          //     color: Colors.red, //Color of the border
                          //     style: BorderStyle.solid, //Style of the border
                          //     width: 0.8, //width of the border
                          //   ),
                          //   child: Text(
                          //     "CALL TO ORDER",
                          //     style: TextStyle(
                          //       fontSize: 18.0,
                          //       color: Colors.orange[800],
                          //     ),
                          //   ),
                          // ),

                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
