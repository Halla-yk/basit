import 'package:basit/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basit/widgets/my-widgets.dart';

class MyOrders extends StatelessWidget {
  final routeName = '/myOrders';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          appBar: appBar(actions: [Container()], text: 'My orders'),
          body: Column(children: [
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 50,
              width: width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: myTabBar('Current', 'Completed'),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                    children: [pageView1(height,width), pageView1(height,width)]),
              ),
            )
          ]),
        ));
  }
}

Widget pageView1(height,width) {
  return ListView.builder(
    itemBuilder: (context, int) => orderItem(height,width),
    itemCount: 3,
  );
}

Widget orderItem(height,width) {
  return Container(
    margin: EdgeInsets.only(bottom: 40),
    padding: EdgeInsets.all(25),
    height: height / 2.7,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(
            horizontal: BorderSide(width: 1, color: kFontColor))),
    child: Column(
      children: [
        tableRow('Order ID', '1234567890',width),
        SizedBox(
          height: 20,
        ),
        tableRow('Order Date', '16 Dec 2018',width),
        SizedBox(
          height: 20,
        ),
        tableRow('Status', 'New',width),
        SizedBox(
          height: 20,
        ),
        orderTile2(height)
      ],
    ),
  );
}
