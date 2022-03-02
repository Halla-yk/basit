import 'package:flutter/material.dart';
import 'package:basit/widgets/my-widgets.dart';
import '../constants.dart';

class StoreDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            pageView2Tile1('Working time', height),
            pageView2Tile2(
                Text(
                  '8 am To 4 pm',
                  style: TextStyle(color: kFontColor, fontSize: 15),
                ),
                height),
            pageView2Tile1('Location', height),
            pageView2Tile2(
                Text(
                  'Qatar , Jery Fatma Street',
                  style: TextStyle(color: kFontColor, fontSize: 15),
                ),
                height),
            pageView2Tile1('Contact info', height),
            pageView2Tile2(
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10,),
                    Text(
                      'Hexa@info.com',
                      style: TextStyle(color: kFontColor, fontSize: 15),
                    )
                  ],
                ),
                height),
            pageView2Tile2(
                Row(
                  children: [
                    Icon(Icons.mobile_friendly),
                    SizedBox(width: 10,),
                    Text(
                      '+ 665556699',
                      style: TextStyle(color: kFontColor, fontSize: 15),
                    )
                  ],
                ),
                height),
            pageView2Tile2(
                Row(
                  children: [
                    Image.asset(
                      'assets/images/socialmedia.png', height: 30, width: 70,),
                    SizedBox(width: 10,),
                    Text(
                      'Hexa@info.com',
                      style: TextStyle(color: kFontColor, fontSize: 15),
                    )
                  ],
                ),
                height)
          ],
        ),
      ),
    );
  }

}
