import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:raashin/screens/order_details.dart';
import 'package:raashin/screens/product_details.dart';

class PendingReviews extends StatefulWidget {
  static const routeName = '/pending-reviews';
  @override
  _PendingReviewsState createState() => _PendingReviewsState();
}

class _PendingReviewsState extends State<PendingReviews> {
  List data;
  Future _loadingDeals;

  Future<String> getJSONData() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    // var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
    // var url = 'https://unsplash.com/napi/photos/Q14J2k8VE3U/related';
    var url = 'https://jsonplaceholder.typicode.com/users';

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // var jsonResponse = convert.jsonDecode(response.body);
      var jsonResponse = json.decode(response.body);
      setState(() {
        data = jsonResponse;
        // data = jsonResponse['results'];
      });
      print('jsonResponse: $jsonResponse.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    // _loadingDeals = fetchCountry(http.Client());
    // this.getJSONData();
    _loadingDeals = this.getJSONData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pending Reviews"),
      ),
      body: _ordersListView(),
    );
  }

  Widget _ordersListView() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            Navigator.pushNamed(
                        context,
                        ProductDetails.routeName
                    );
          },
          child: Card(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
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
                          SizedBox(
                            height: 20.0,
                          ),
                          Text("Order No : 324557683"),
                          Text(
                            "DELIVERED ON 2020-09-23",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(
                            color: Colors.grey[400],
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              height: 60,
                              width: 150,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context,
                                      ProductDetails.routeName
                                  );
                                },
                                child: Text(
                                  "RATE & REVIEW",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                color: Colors.orange[600],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
