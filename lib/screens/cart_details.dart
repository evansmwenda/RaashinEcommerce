import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CartDetails extends StatefulWidget {
  static const routeName = '/cartdetails';
  @override
  _CartDetailsState createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
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
              decoration: BoxDecoration(color: Colors.redAccent),
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
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ZB-Rocker Thunder ",
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
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                        new TextSpan(text: "    "),
                                        new TextSpan(
                                            text: '-49%',
                                            style: TextStyle(
                                              backgroundColor: Colors.red[50],
                                              color: Colors.red,
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
                                    color: Colors.red,
                                  ),
                                  onPressed: () {}),
                              Divider(
                                color: Colors.green,
                                thickness: 2.0,
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.dangerous,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.share_rounded,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.red,
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
            ),

          ],
        ));
  }
}
