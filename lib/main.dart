import 'package:basit/constants.dart';
import 'package:basit/views/Notification-23.dart';
import 'package:basit/views/add-product-32.dart';
import 'package:basit/views/cart-20.dart';
import 'package:basit/views/checkout-21.dart';
import 'package:basit/views/contact-us-25.dart';
import 'package:basit/views/customer-orders-33.dart';
import 'package:basit/views/main-signup.dart';
import 'package:basit/views/my-favorites-24.dart';
import 'package:basit/views/my-orders-26.dart';
import 'package:basit/views/my-products-31.dart';
import 'package:basit/views/offers-30.dart';
import 'package:basit/views/onboarding-body.dart';
import 'package:basit/views/form-template.dart';
import 'package:basit/views/product-details.dart';
import 'package:basit/views/services-providers-37.dart';
import 'package:basit/views/store-products-13.dart';
import 'package:basit/views/stores-list.dart';
import 'package:basit/widgets/contact-us-form.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:basit/views/Home.dart';
import 'package:basit/widgets/grid-view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme:  IconThemeData(
          color: kFontColor, //change your color here
        ),
  //      primarySwatch: Colors.blue,
      ),
       // initialRoute: MyProducts().routeName,
       // routes: routes,
     home: Onbording(),
    );
  }
}

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Halla-yk/basit.git
git push -u origin main