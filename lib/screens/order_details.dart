import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  static const routeName = '/order-details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Status"),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            height: 60.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ORDER NO:318145632",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "2020-09-12",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 60.0,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 items"),
                      Text("Ksh 10,491"),
                    ],
                  ),
                ),
                VerticalDivider(
                  thickness: 2,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 items"),
                      Text("Ksh 10,491"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Shipping",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Evans Mwenda",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "Raashin CBD Kantaria Pickup- Kantaria House",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "Kamau Kamau - 0712345678",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "CBD - UON/Globe/Koja/River Road",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "+254718123123",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            height: 60.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ITEMS IN YOUR ORDER",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
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
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "KSh 469",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey[400],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        new RichText(
                          text: new TextSpan(
                            text: '',
                            children: <TextSpan>[
                              new TextSpan(
                                text: "Quantity",
                                style: new TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 17.0,
                                ),
                              ),
                              new TextSpan(text: "    "),
                              new TextSpan(
                                  text: '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.airport_shuttle,
                              color: Colors.indigo,
                            ),
                            Expanded(
                              child: Text(
                                "Delivered between Thursday 24 Sep and Saturday 26 Sep. Please check out exact dates in the checkout page.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "STATUS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        new RichText(
                          text: new TextSpan(
                            text: '',
                            children: <TextSpan>[
                              new TextSpan(
                                text: "Your item has been delivered",
                                style: new TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                              ),
                              new TextSpan(
                                  text: ' 2020-09-23 18:45:32',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12.0,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 60,
                            width: 100,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "REORDER",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              color: Colors.orange[600],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.grey[800],thickness: 1,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
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
                            fontSize: 17.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "KSh 469",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey[400],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        new RichText(
                          text: new TextSpan(
                            text: '',
                            children: <TextSpan>[
                              new TextSpan(
                                text: "Quantity",
                                style: new TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 17.0,
                                ),
                              ),
                              new TextSpan(text: "    "),
                              new TextSpan(
                                  text: '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.airport_shuttle,
                              color: Colors.indigo,
                            ),
                            Expanded(
                              child: Text(
                                "Delivered between Thursday 24 Sep and Saturday 26 Sep. Please check out exact dates in the checkout page.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "STATUS",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        new RichText(
                          text: new TextSpan(
                            text: '',
                            children: <TextSpan>[
                              new TextSpan(
                                text: "Your item has been delivered",
                                style: new TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                              ),
                              new TextSpan(
                                  text: ' 2020-09-23 18:45:32',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12.0,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 60,
                            width: 100,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "REORDER",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              color: Colors.orange[600],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
