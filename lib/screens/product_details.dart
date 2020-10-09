import 'package:flutter/material.dart';
import 'package:raashin/widgets/ProductsGridView.dart';

class ProductDetails extends StatefulWidget {
  static const routeName = '/product-details';
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments args = ModalRoute.of(context).settings.arguments;


    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
      ),
      body: Center(
        child: Text(
          "Product Details Screeen" + args.capital,
        ),
      ),
    );
  }
}
