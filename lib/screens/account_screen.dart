import 'package:flutter/material.dart';
import 'package:raashin/screens/my_addresses.dart';
import 'package:raashin/screens/my_orders.dart';
import 'package:raashin/screens/my_profile.dart';
import 'package:raashin/screens/pending_reviews.dart';
import 'package:raashin/screens/saved_items.dart';

class AccountScreen extends StatefulWidget {
  static const routeName = '/accountscreen';
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        children: [
          Container(
            // decoration: BoxDecoration(
            //   color: Colors.red,
            // ),
            // height: 200.0,
            width: 200.0,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, MyOrders.routeName);
                    },
                    leading: Icon(
                      Icons.wallet_giftcard,
                      size: 25.0,
                    ),
                    title: Text(
                      "Orders",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, PendingReviews.routeName);
                    },
                    leading: Icon(
                      Icons.add_comment,
                      size: 25.0,
                    ),
                    title: Text(
                      "Pending Reviews",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, SavedItems.routeName);
                    },
                    leading: Icon(
                      Icons.favorite_border_outlined,
                      size: 25.0,
                    ),
                    title: Text(
                      "Saved Items",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 35,
            child: Container(
              padding: EdgeInsets.only(left: 10.0, top: 5.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "MY SETTINGS",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
          ),
          Container(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, MyProfile.routeName);
                    },
                    title: Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, MyAddresses.routeName);
                    },
                    title: Text(
                      "Address Book",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Center(
              child: FlatButton(
                child: Text(
                  "LOGOUT",
                  style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 19.0
                  ),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
