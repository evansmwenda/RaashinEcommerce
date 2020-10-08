import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:raashin/constants/apis.dart';
import 'package:raashin/models/countries_model.dart';
import 'package:raashin/widgets/ProductsGridView.dart';
import 'package:http/http.dart' as http;

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];


class Homepage extends StatefulWidget {
  static const routeName = '/homepage';
  @override
  _State createState() => _State();
}

class _State extends State<Homepage> {
  int _current = 0;
  bool get wantKeepAlive => true;
  Future _loadingDeals;

  @override
  void initState() {
    _loadingDeals = fetchCountry(http.Client());
    super.initState();
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

    final List<Widget> imageSliders = imgList.map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                Positioned(
//                  bottom: 0.0,
//                  left: 0.0,
//                  right: 0.0,
//                  child: Container(
//                    decoration: BoxDecoration(
//                      gradient: LinearGradient(
//                        color: [
//                          Color.fromARGB(200, 0, 0, 0),
//                          Color.fromARGB(0, 0, 0, 0)
//                        ],
//                        begin: Alignment.bottomCenter,
//                        end: Alignment.topCenter,
//                      ),
//                    ),
//                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//                    child: Text(
//                      'No. ${imgList.indexOf(item)} image',
//                      style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 20.0,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                  ),
//                ),
              ],
            )
        ),
      ),
    )).toList();

    final Widget myWidget = Container(
        height: 200.0,
        margin: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
//              color: Colors.blue,
        ),

        child: Column(
            children: [
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
                    }
                ),
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
            ]
        )
    );

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
      body: ListView(
          children: <Widget>[
            myWidget,
            Container(
              //child: Expanded(
              child: FutureBuilder<List<Country>>(
                  future: _loadingDeals,//fetchCountry(http.Client()),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) print(snapshot.error);

                    return snapshot.hasData
                        ? ProductsGridView(productsList: snapshot.data)
                        : Center(child: new CircularProgressIndicator());
                  }),
            ),
          ],
        ),


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
                child: Text("E",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
//              Icon(
//                Icons.person,
//                size: 50,
//              ),
              ),
            ),
            ListTile(
              title: Text('Home',style: TextStyle(
                color: Colors.blue,
              ),),
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
              title: Text('Update',style: TextStyle(
                color: Colors.blue,
              ),),
              leading: Icon(
                Icons.update,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Airplay',style: TextStyle(
                color: Colors.blue,
              ),),
                leading: Icon(
                  Icons.airplay,
                  color: Colors.blue,
                ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Description',style: TextStyle(
                color: Colors.blue,
              ),),
              leading: Icon(
                Icons.description,
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
}
