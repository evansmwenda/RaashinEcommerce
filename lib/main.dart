import "package:flutter/material.dart";
import 'package:raashin/screens/account_screen.dart';
import 'package:raashin/screens/cart_details.dart';
import 'package:raashin/screens/categories_screen.dart';
import 'package:raashin/screens/edit_address.dart';
import 'package:raashin/screens/home_page.dart';
import 'package:raashin/screens/login.dart';
import 'package:raashin/screens/my_addresses.dart';
import 'package:raashin/screens/my_orders.dart';
import 'package:raashin/screens/my_profile.dart';
import 'package:raashin/screens/order_details.dart';
import 'package:raashin/screens/pending_reviews.dart';
import 'package:raashin/screens/product_details.dart';
import 'package:raashin/screens/register.dart';
import 'package:raashin/screens/saved_items.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
   debugShowCheckedModeBanner: false,//uncomment this line in production
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),//MyApp(), //splash screen page
        Login.routeName: (context) => Login(),//login page
        Register.routeName: (context) => Register(),//register page
        Homepage.routeName: (context) => Homepage(),//homepage
        ProductDetails.routeName: (context) => ProductDetails(),
        CartDetails.routeName: (context) => CartDetails(),
        AccountScreen.routeName: (context) => AccountScreen(),//AccountScreen
        CategoriesScreen.routeName: (context) => CategoriesScreen(),//CategoriesScreen
        MyOrders.routeName: (context) => MyOrders(),//MyOrders
        OrderDetails.routeName: (context) => OrderDetails(),//OrderDetails
        PendingReviews.routeName: (context) => PendingReviews(),//PendingReviews
        SavedItems.routeName: (context) => SavedItems(),//SavedItems
        MyProfile.routeName: (context) => MyProfile(),//MyProfile
        MyAddresses.routeName: (context) => MyAddresses(),//MyAddresses
        EditAddress.routeName: (context) => EditAddress(),//EditAddress
        //ProductDetails


      },
    ),
  );
}
