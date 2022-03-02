import 'package:basit/views/add-product-32.dart';
import 'package:basit/views/cart-20.dart';
import 'package:basit/views/checkout-21.dart';
import 'package:basit/views/contact-us-25.dart';
//import 'package:basit/views/customer-order-details-37.dart';
import 'package:basit/views/main-signup.dart';
import 'package:basit/views/my-favorites-24.dart';
import 'package:basit/views/my-orders-26.dart';
import 'package:basit/views/offers-30.dart';
import 'package:basit/views/onboarding-body.dart';
import 'package:basit/views/form-template.dart';
import 'package:basit/views/product-details.dart';
import 'package:basit/views/services-providers-37.dart';
import 'package:flutter/cupertino.dart';
import 'views/Home.dart';
import 'package:basit/views/Notification-23.dart';

final Map<String, WidgetBuilder> routes = {
  //SplashScreen().routeName: (context) => SplashScreen(),
  Home().routeName: (context) => Home(),
  Onbording().routeName: (context) => Onbording(),
  MainSignUp().routeName: (context) => MainSignUp(),
  Template(Container()).routeName: (context) => Template(Container()),
  ProductDetails().routeName: (context) => ProductDetails(),
  ServicesProviders().routeName: (context) => ServicesProviders(),
  Cart().routeName: (context) => Cart(),
  Offers().routeName: (context) => Offers(),
  MyFavorites().routeName: (context) => MyFavorites(),
  //AddProduct().routeName: (context) => AddProduct(),
  MyOrders().routeName: (context) => MyOrders(),
  CheckOut().routeName: (context) => CheckOut(),
  MyNotification().routeName: (context) => MyNotification(),
  ContactUs().routeName: (context) => ContactUs(),
 // CustomerOrderDetails().routeName: (context) =>CustomerOrderDetails()
};
