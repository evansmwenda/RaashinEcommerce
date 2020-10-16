import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsWidget extends StatefulWidget {
  @override
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    var device_width = MediaQuery.of(context).size.width;
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(15.0),
            width: device_width,
            decoration: BoxDecoration(
                // color: Colors.redAccent
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ZB-Rocker Thunder XL-Portable-Bluetooth Trolley Speaker-50W",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "KSh 469",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21.0,
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
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      new TextSpan(text: "    "),
                      new TextSpan(
                          text: '-49%',
                          style: TextStyle(
                            backgroundColor: Colors.orange[50],
                            color: Colors.orange,
                            fontSize: 17.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 170,
                          child: RatingBar(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ignoreGestures: true,
                            itemSize: 19.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.orange[800],
                            ),
                          ),
                        ),
                        Text(
                          "(2 ratings)",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.indigo),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.share_rounded,
                              color: Colors.orange[800],
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.orange[800],
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
          width: device_width,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Text(
              "DELIVERY AND RETURNS INFO",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Card(
          child: Container(
            // padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                // color: Colors.green,
                ),
            width: device_width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.airport_shuttle,
                    size: 30,
                  ),
                  title: Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Normally delivered in Nairobi between Monday 19 Oct and Tuesday 20 Oct,"
                    "allow up to 6 additional business days for other cities. Please check exact dates in the "
                    "checkout page.",
                    style: TextStyle(
                      fontSize: 14.9,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.youtube_searched_for,
                    size: 28,
                  ),
                  title: Text(
                    "Return Policy",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "15 days free return",
                    style: TextStyle(
                      fontSize: 14.9,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.assignment_turned_in_outlined,
                    size: 26,
                  ),
                  title: Text(
                    "Warranty",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 Year Warranty",
                    style: TextStyle(
                      fontSize: 14.9,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
          width: device_width,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Text(
              "PRODUCT DETAILS",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Colors.black,
                ),
                title: Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: Text(
                  "-Connectivity: Bluetooth, USB, TF Card,Aux In,FM Radio and Hands free",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
                child: Text(
                  "-Speaker Output : 5W",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
                child: Text(
                  "-Battery Capacity : 4600mAh",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 2.0, bottom: 10.0),
                child: Text(
                  "-Charging time : 4 hours...",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0,
          width: device_width,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Text(
              "CUSTOMER FEEDBACK",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Colors.black,
                ),
                title: Text(
                  "Product Rating & Reviews",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: RichText(
                  text: new TextSpan(
                    text: '',
                    children: <TextSpan>[
                      new TextSpan(
                        text: "4.4/5",
                        style: new TextStyle(
                          fontSize: 15.0,
                          color: Colors.orange[800],
                        ),
                      ),
                      new TextSpan(
                          text: "  (9 ratings)",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 170,
                          child: RatingBar(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ignoreGestures: true,
                            itemSize: 18.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.orange[800],
                            ),
                          ),
                        ),
                        Text("2020-10-14"),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "I like it",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Good Sound",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("by Rebecca",style: TextStyle(fontSize: 14.5),),
                        Text(
                          "Verified Purchase",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 170,
                          child: RatingBar(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ignoreGestures: true,
                            itemSize: 18.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        Text("2020-10-14"),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Like it",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Very Good Loud Sound",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("by Ebrahim Salim",style: TextStyle(fontSize: 14.5),),
                        Text(
                          "Verified Purchase",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),



            ],
          ),
        ),
      ],
    );
  }
}
