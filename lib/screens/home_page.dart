import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:raashin/constants/apis.dart';
import 'package:raashin/models/countries_model.dart';
import 'package:raashin/widgets/ProductsGridView.dart';
import 'package:http/http.dart' as http;

final List<String> imgList = [
  'images/slider1.jpeg',
  'images/slider2.jpeg',
  'images/slider3.jpeg',
  'images/slider4.jpeg',
  'images/slider5.jpeg',
  'images/slider6.jpeg'
];

class Homepage extends StatefulWidget {
  static const routeName = '/homepage';
  @override
  _State createState() => _State();
}

class _State extends State<Homepage> {
  List data;
  int _current = 0;
  bool get wantKeepAlive => true;
  Future _loadingDeals;

  Future<String> getJSONData() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    // var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
    var url = 'https://unsplash.com/napi/photos/Q14J2k8VE3U/related';

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // var jsonResponse = convert.jsonDecode(response.body);
      var jsonResponse = json.decode(response.body);
      setState(() {
        data = jsonResponse['results'];
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
    this.getJSONData();
  }

  @override
  Widget build(BuildContext context) {
    var aboutChild = AboutListTile(
      child: Text(
        "About",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      applicationName: "Raashin",
      applicationVersion: "v1.0.0",
      applicationLegalese: '© Raashin Africa',
      applicationIcon: SizedBox(
        height: 40.0,
        width: 40.0,
        child: Image(
          image: AssetImage('images/connectdark.png'),
        ),
      ), //FlutterLogo(),
      icon: Icon(
        Icons.info,
        color: Colors.blue,
      ),
    );

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
//                Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Image(
                          image: AssetImage(
                            item,
                          ),
                          width: 1000.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    final Widget myWidget = Container(
        height: 200.0,
        margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
//              color: Colors.blue,
        ),
        child: Column(children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ]));

    return Scaffold(
      appBar: AppBar(
        title: Text("Raashin"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body:
          // ListView(
          //   children: <Widget>[
          //     myWidget,
          //     Container(
          //       //child: Expanded(
          //       child: FutureBuilder<List<Country>>(
          //           future: _loadingDeals, //fetchCountry(http.Client()),
          //           builder: (context, snapshot) {
          //             if (snapshot.hasError) print(snapshot.error);
          //
          //             return snapshot.hasData
          //                 ? ProductsGridView(productsList: snapshot.data)
          //                 : Center(child: new CircularProgressIndicator());
          //           }),
          //     ),
          //   ],
          // ),

          _buildListView(),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              accountName: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("John Doe"),
              ),
              accountEmail: Text("johndoe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "E",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
//              Icon(
//                Icons.person,
//                size: 50,
//              ),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              leading: Icon(
                Icons.assignment,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Account',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              leading: Icon(
                Icons.account_circle,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Help',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            aboutChild,
          ],
        ),
      ),
    );
  }

  Widget _buildListView() {
    return GridView.builder(
      itemCount: data == null ? 0 : data.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new Card(
          child: new GridTile(
            child: Container(
              alignment: Alignment(-1.0, -1.0),
              decoration: BoxDecoration(
                // color: Colors.grey,
              ),
              child: CachedNetworkImage(
                imageUrl: data[index]['urls']['small'],
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            footer: Center(
              child: Column(
                children: [
                  new Text(data[index]['user']['name']),
                  new Text("KSh 400"),
                ],
              ),
            ),
            //just for testing, will fill with image later
          ),
        );
      },
    );
    // return ListView.builder(
    //   padding: const EdgeInsets.all(16.0),
    //   itemCount: data == null ? 0 : data.length,
    //   itemBuilder: (context, index) {
    //     return _buildImageColumn(data[index]);
    //     // return ListTile(title: Text("data"),subtitle: Text("Likes : 1"),);
    //   },
    // );
  }

  Widget _buildImageColumn(item) => Card(
          child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: item['urls']['small'],
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          ListTile(
            title: Text(item['user']['name']),
            subtitle: Text(item['likes'].toString()),
          ),
        ],
      ));
}
