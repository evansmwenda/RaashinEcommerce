import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:raashin/models/countries_model.dart';

class ProductsGridView extends StatelessWidget {
//  final List<Products> productsList;
  final List<Country> productsList;

  ProductsGridView({Key key, this.productsList}) : super(key: key);

//  Card getStructuredGridCell(Country country) {
//    return new Card(
//        elevation: 1.5,
//        child: new Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisSize: MainAxisSize.min,
//          verticalDirection: VerticalDirection.down,
//          children: <Widget>[
//            new FadeInImage.memoryNetwork(
//              image: country.flag.replaceAll('https', 'http'),
//              placeholder: kTransparentImage),
//            ),
//            new Padding(
//              padding: EdgeInsets.only(left: 10.0),
//              child: new Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  new Text(country.name),
//                  new Text(country.nativeName),
//                  new Text(country.capital),
//                ],
//              ),
//            )
//          ],
//        ));
//  }

  GestureDetector getStructuredGridCell(Country products) {
    // Wrap the child under GestureDetector to setup a on click action
    return GestureDetector(
      onTap: () {
        print("onTap called->>" + products.name);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0.0),
        child: Card(
            elevation: 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    //Center(child: CircularProgressIndicator()),
                    Center(
                      child: FadeInImage.assetNetwork(
                        placeholder: 'images/loading2.gif',
                        image: 'https://picsum.photos/250?image=9',
                      ),

//                      CachedNetworkImage(
//                        imageUrl: "http://via.placeholder.com/150x150",
////                        progressIndicatorBuilder: (context, url, downloadProgress) =>
////                            CircularProgressIndicator(value: downloadProgress.progress),
//                        placeholder: (context, url) => CircularProgressIndicator(),
//                        errorWidget: (context, url, error) => Icon(Icons.error),
//                      ),

                    ),
                  ],
                ),
                Center(
                  child: Text(products.name),
                ),
                Center(
                  child: Text(
                    "KSh. 200",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
      ),


    );
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      primary: true,
      crossAxisCount: 2,
      childAspectRatio: 0.80,
      padding: const EdgeInsets.all(1.0),
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      shrinkWrap: true,
      physics: ScrollPhysics(), //to disable gridviews' scrolling
      children: List.generate(productsList.length, (index) {
        return getStructuredGridCell(productsList[index]);
      }),
    );
  }
}