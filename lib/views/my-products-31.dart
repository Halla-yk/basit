import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MyProducts extends StatelessWidget {
  final routeName = '/myProducts';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add,))],
          text: 'My Products'),
      backgroundColor: kPrimaryColor,
      body: ListView.builder(
        itemBuilder: (context, int) => myProducts(height, width),
        itemCount: 6,
      ),
    );
  }
}

Widget myProducts(height, width) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    height: height / 6,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(3)),
    child: Row(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: height / 7,
            width: height / 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/a.png',
                fit: BoxFit.cover,
              ),
            )),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hat',
                      style: TextStyle(
                          fontSize: 13,
                          color: kFontColor,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          size: 17,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '100 QR',
                      style: TextStyle(
                          fontSize: 13,
                          color: kFontColor,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete_outline_sharp,
                          color: Colors.red,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
