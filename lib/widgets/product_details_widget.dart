import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsWidget extends StatefulWidget {
  @override
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: 250.0,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          height: 250.0,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(15.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // color: Colors.redAccent
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "ZB-Rocker Thunder XL-Portable-Bluetooth Trolley Speaker-50W",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "KSh 469",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
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
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        Text(
                          "(2 ratings)",
                          style: TextStyle(fontSize: 18.0, color: Colors.indigo),
                        ),
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
        ListTile(
          title: Text("Description"),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
          ),
        ),

      ],
    );
  }
}
