import 'package:flutter/material.dart';
import 'package:raashin/screens/edit_address.dart';

class MyAddresses extends StatefulWidget {
  static const routeName = '/my-addresses';
  @override
  _MyAddressesState createState() => _MyAddressesState();
}

class _MyAddressesState extends State<MyAddresses> {
  @override
  Widget build(BuildContext context) {
    var device_width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Addresses"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.green[70],
              ),
              height:MediaQuery.of(context).size.height -140.0,
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
                      "YOUR ADDRESSES",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Evans Mwenda",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Umoja 3 Hospital"),
                            Text("CBD - UON/Globe/Koja/River Road"),
                            Text("+254718123123"),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.pushNamed(context, EditAddress.routeName);
                          },
                          color: Colors.orange[600],
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                ],
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, EditAddress.routeName);
                  },
                  color: Colors.orange[800],
                  child: Text("ADD NEW ADDRESS", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                  ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
