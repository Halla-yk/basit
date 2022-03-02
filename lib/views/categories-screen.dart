import 'package:basit/constants.dart';
import 'package:flutter/material.dart';
import 'package:basit/widgets/Home-page-view.dart';
import 'package:basit/widgets/grid-view.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        HomePageView(),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Store Categories',
            textAlign: TextAlign.start,
            style: TextStyle(color: kFontColor, fontWeight: FontWeight.bold,fontSize: 17),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(child: MyGrid())
      ]),
    );
  }
}
