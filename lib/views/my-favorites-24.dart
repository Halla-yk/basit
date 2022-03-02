import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyFavorites extends StatelessWidget {
  final routeName = '/myFavorites';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: appBar(actions: [Container()], text: 'My Favorites'),
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(left: 30, top: 30),
          child:
          Container(
            height: MediaQuery.of(context).size.height-30,
            child: ListView.separated(
              separatorBuilder: (context, int) => Divider(
                height: 30,
                thickness: 1.5,
                color: Color(0xFFa7b8cf),
              ),
              itemBuilder: (context, index) => cartItem(height, width),
              itemCount: 6,
            ),
          ),

        ));
  }
}

Widget cartItem(double height, double width) {
  return Container(
    height: height / 8,
    child: Row(
      children: [
        Container(
            height: height / 8,
            width: height / 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/a.png',
                fit: BoxFit.cover,
              ),
            )),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(color: kFontColor,fontWeight: FontWeight.bold),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '100 QR',
                    style: TextStyle( color: kFontColor,fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_outline_sharp,
                        color: Colors.red,
                      ))
                ],
              ),
                Text(
                  'Rose store',
                  style: TextStyle(fontSize: 13, color: Color(0xFF78C4C5)),
                ),

              ],
            ),
          ),
        ),
      ],
    ),
  );
}

