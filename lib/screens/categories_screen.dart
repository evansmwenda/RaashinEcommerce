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
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                        ),
                        child: Text("text is me"),
                      ),
                    ),
                  ],

                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text("col 2"),
                      ),
                    ),
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
