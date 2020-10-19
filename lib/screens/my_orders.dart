import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:raashin/screens/order_details.dart';

class MyOrders extends StatefulWidget {
  static const routeName = '/orders';
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
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
        title: Text("Orders"),
      ),
      body: _ordersListView(),
    );
  }

  Widget _ordersListView() {
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: (){
            print("onTap called->>" + data[index].toString());
            Navigator.pushNamed(context, OrderDetails.routeName);
          },
          title: Text('318734252'),
          subtitle: Text("2020-02-09"),
          trailing: Text("Ksh 10,490"),
        );
        // return GestureDetector(
        //   onTap: () {
        //     print("onTap called->>" + data[index].toString());
        //     Navigator.pushNamed(
        //         context,
        //         ProductDetails.routeName
        //     );
        //   },
        //   child: Card(
        //     child: GridTile(
        //       child: Container(
        //         alignment: Alignment(0, -1.0),
        //         decoration: BoxDecoration(
        //           // color: Colors.grey,
        //         ),
        //         child: CachedNetworkImage(
        //           alignment: Alignment(0, -1.0),
        //           height: 130.0,
        //           fit: BoxFit.fitHeight,
        //           imageUrl: data[index]['urls']['regular'],
        //           placeholder: (context, url) =>
        //               Center(child: CircularProgressIndicator()),
        //           errorWidget: (context, url, error) => Icon(Icons.error),
        //         ),
        //       ),
        //       footer: Container(
        //         // color: Colors.red,
        //         margin: EdgeInsets.all(0.0),
        //         child: Center(
        //           child: Column(
        //             children: [
        //               new Text(data[index]['user']['name']),
        //               new Text(
        //                 "KSh 400",
        //                 style: TextStyle(fontWeight: FontWeight.bold),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       //just for testing, will fill with image later
        //     ),
        //   ),
        // );
      },
    );
  }
}
