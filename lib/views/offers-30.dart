import 'package:basit/constants.dart';
import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  final routeName = '/Offers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.view_headline))
      ], text: 'Offers'),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          child: ListView.builder(
            itemBuilder: (context, index) => offerItem(context),
            itemCount: 3,
          )),
    );
  }
}

Widget offerItem(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
    height: MediaQuery.of(context).size.height/3.2,
    width: 500,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: kFontColor),
                  borderRadius: BorderRadius.circular(5)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/ads1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0.5,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kFontColor),
                          borderRadius: BorderRadius.circular(5)),
                      height: 30,
                      width: 70,
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Text(
                            "100 QR",
                            style: TextStyle(fontSize: 10, color: kFontColor),
                          ),
                          Container(
                            child: Text(
                              "100 QR",
                              style: TextStyle(
                                color: Colors.transparent,
                                decorationColor: Colors.red,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kFontColor),
                          borderRadius: BorderRadius.circular(5)),
                      height: 30,
                      width: 70,
                      child: Center(
                        child: Text(
                          "90 QR",
                          style: TextStyle(fontSize: 10, color: kFontColor),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Jewellery',
          style: TextStyle(color: kFontColor, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
