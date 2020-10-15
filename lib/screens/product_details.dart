import 'package:flutter/material.dart';
import 'package:raashin/widgets/product_details_widget.dart';

class ProductDetails extends StatefulWidget {
  static const routeName = '/product-details';
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    // final ProductDetailArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("Product Name"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green[70],
              ),
              height:MediaQuery.of(context).size.height -140.0,
              child: ProductDetailsWidget(),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: Text("ADD TO CART"),
                ),
              ),
            )
          ],
        ),);
  }
}


