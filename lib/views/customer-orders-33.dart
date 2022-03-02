import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basit/constants.dart';
class CustomerOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(actions: [Container()], text: 'Customers Orders'),
        body: ListView.builder(
            itemBuilder: (context, index) => Container(
                  child: customerOrderTile(height, width,index),
                )
        ,itemCount: 4,));
  }
}

Widget customerOrderTile(height, width, num) {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(20),
    color: Colors.white,
    height: height / 3,
    width: width / 1.3,
    child: Column(
      children: [
    Container(
    child: Row(
    children: [
        Image.asset('assets/images/order.png'),SizedBox(width: 10,),
    Text('Order ${num+1}',style: TextStyle(color: Color(0xff78C4C5),fontWeight: FontWeight.bold),)
    ],
  )),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Column(
            children: [
              SizedBox(height: 15,),
              tableRow('Order date', '18 Dec 2018', width),
              SizedBox(
                height: 20,
              ),
              tableRow('Customer', 'Salih', width),
              SizedBox(
                height: 20,
              ),
              tableRow('Status', 'New', width),
              SizedBox(
                height: 20,
              ),
              tableRow('Total Price', '1200 QR', width),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
