import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/categories';
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: Container(
        margin: EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Supermarket",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Healthy & Beauty",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Home & Office",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Phones & Tablets",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Computing",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Electronics",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Fashion",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Gaming",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Baby Products",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Sporting Goods",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    SizedBox(
                        height: 80,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Garden & Outdoors",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: ListView(
                  children: [
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            // color: Colors.redAccent
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text("HOME & KITCHEN"),
                                ),

                                Expanded(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Text(
                                        "SEE ALL",
                                      style: TextStyle(
                                        color: Colors.orange[800],
                                      ),
                                      ),

                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Home Decor"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bedding"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Wall Art"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bath"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Storage"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Furniture"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          // color: Colors.redAccent
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text("HOME & KITCHEN"),
                                ),

                                Expanded(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Text(
                                      "SEE ALL",
                                      style: TextStyle(
                                        color: Colors.orange[800],
                                      ),
                                    ),

                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Home Decor"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bedding"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Wall Art"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bath"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Storage"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Furniture"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          // color: Colors.redAccent
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text("HOME & KITCHEN"),
                                ),

                                Expanded(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Text(
                                      "SEE ALL",
                                      style: TextStyle(
                                        color: Colors.orange[800],
                                      ),
                                    ),

                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Home Decor"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bedding"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Wall Art"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bath"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Storage"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Furniture"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          // color: Colors.redAccent
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text("HOME & KITCHEN"),
                                ),

                                Expanded(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Text(
                                      "SEE ALL",
                                      style: TextStyle(
                                        color: Colors.orange[800],
                                      ),
                                    ),

                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Home Decor"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bedding"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Wall Art"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bath"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Storage"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Furniture"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          // color: Colors.redAccent
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text("HOME & KITCHEN"),
                                ),

                                Expanded(
                                  child: InkWell(
                                    onTap: (){},
                                    child: Text(
                                      "SEE ALL",
                                      style: TextStyle(
                                        color: Colors.orange[800],
                                      ),
                                    ),

                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Home Decor"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bedding"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Wall Art"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Bath"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Storage"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text("Furniture"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
