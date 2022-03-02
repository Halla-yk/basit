import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Cart extends StatelessWidget {
  final routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: appBar(actions: [Container()], text: 'Cart'),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 30, top: 30),
              child:
                  Container(
                   height: height/2,
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

            ),
            Container(
              height: height/10,
              padding: EdgeInsets.all(10),
              color: Color(0xffEFEFEF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total price',
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),Text('300 QR',style: TextStyle(color: Color(0xFF78C4C5)),)
                ],
              ),
            ),
           Expanded(child: Container(color:Colors.white,child: Center(child: customButton(context,'CheckOut', 12, 1.3)),))
          ],
        ));
  }
}

Widget cartItem(double height, double width) {
  return Container(
    height: height / 7,
    child: Row(
      children: [
        Container(
            height: height / 7,
            width: height / 7,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 18, color: kFontColor),
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
                  '200 QR',
                  style: TextStyle(fontSize: 13, color: kFontColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rose store',
                      style: TextStyle(fontSize: 13, color: Color(0xFF78C4C5)),
                    ),
                    counter(height, width),
                    SizedBox(
                      width: 5,
                    )
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

Widget counter(double height, double width) {
  return Container(
    child: Row(
      children: [
        GestureDetector(
            onTap: () {},
            child: Container(
              child: Icon(
                Icons.remove,
                size: 17,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1, color: Colors.black38)),
              height: height / 25,
              width: height / 25,
            )),
        SizedBox(
          width: 10,
        ),
        Text(
          '3',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: kFontColor, fontSize: 15),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            child: Icon(
              Icons.add,
              size: 17,
            ),
            decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1, color: Colors.black38)),
            height: height / 25,
            width: height / 25,
          ),
        )
      ],
    ),
  );
}
