import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CheckOut extends StatefulWidget {
  final routeName = '/checkOut';

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int val1 = 1;
  int val2 = 1;

  setRadio1(var value) {
    setState(() {
      val1 = value as int;
    });
  }

  setRadio2(var value) {
    setState(() {
      val2 = value as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(actions: [Container()], text: 'CheckOut'),
      body: ListView(
        children: [
          Container(
            height: 10,
            color: kPrimaryColor,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(left: 30, top: 30),
            color: Colors.white,
            child: ListView.separated(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, int) => Divider(
                height: 30,
                thickness: 1.5,
                color: Color(0xFFa7b8cf),
              ),
              itemBuilder: (context, index) => orderTile2(height),
              itemCount: 4,
            ),
          ),
          pageView2Tile1('Delivery Address', height),
          Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kFontColor),
                borderRadius: new BorderRadius.circular(
                  10.0,
                ),
              ),
              child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      )))),
          pageView2Tile1('Delivery method', height),
          radioRow(width, setRadio1, val1, 'Delivery', 'Pickup'),
          pageView2Tile1('Delivery Company', height),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery Cost',
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Text('50 QR',
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Cost',
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Text('1500 QR',
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          pageView2Tile1('Payment method', height),
          radioRow(width, setRadio2, val2, 'cash', 'epayments'),

          Container(
            color: kPrimaryColor,
              height: height/5,
              width: width,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width / 8,vertical:width / 10),
                  child: customButton(context, 'Checkout', 12, 1.5))),
        ],
      ),
    );
  }
}

Widget radioRow(width, Function set, val, text1, text2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: width / 2,
        child: Row(
          children: [
            Radio(
              activeColor: kFontColor,
              value: 1,
              groupValue: val,
              onChanged: (value) {
                set(value);
              },
            ),
            Text(
              text1,
              style: TextStyle(
                  color: kFontColor, fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      Container(
        width: width / 2,
        child: Row(
          children: [
            Radio(
              activeColor: kFontColor,
              value: 2,
              groupValue: val,
              onChanged: (value) {
                set(value);
              },
            ),
            Text(
              text2,
              style: TextStyle(
                  color: kFontColor, fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      )
    ],
  );
}
