import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  static const routeName = '/order-details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Status"),
      ),
      body: Center(
        child: Text("Order Status Details"),
      ),
    );
  }
}
