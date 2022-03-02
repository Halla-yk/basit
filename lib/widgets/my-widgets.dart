import 'package:flutter/material.dart';

import '../constants.dart';


PreferredSizeWidget appBar({required List<Widget> actions ,required String text}){
  return AppBar(
    iconTheme: IconThemeData(
      color: kFontColor, //change your color here
    ),
    actions: actions,
    elevation:3,
    title: Text(
      text,
      style: TextStyle(color: kFontColor,fontWeight: FontWeight.bold),
    ),
    backgroundColor: kPrimaryColor,
    centerTitle: true,
  );
}

Widget customTile(IconData icons,String title){
  return Container(
    margin: EdgeInsets.only(left: 10),
    child: ListTile(
      leading: Icon(
        icons,
        color: kFontColor,
      ),
      title: Text(
        title,
        style: TextStyle(color: kFontColor,fontSize: 15),
      ),
    ),
  );
}
Widget buildDot(
    {required int index,
      required int currentPage,
      required Color color1,
      required Color color2}) {
  return Container(
    margin: EdgeInsets.all(1.5),
    height: 11,
    width: 11,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: currentPage == index ? color2 : color1
    ),
  );
}
Widget customButton(BuildContext context,String text,double height,double width){
  return Container(
    height: MediaQuery.of(context).size.height /height,
    width: MediaQuery.of(context).size.width /width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      gradient: LinearGradient(
        colors: [ Color(0xFF74BCC2),Color(0xFF649AB8)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.0, 0.8],

      ),
    ),
    child: MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      onPressed: () async {


      },
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
      ),
    ),
  );
}
Widget tableRow(String text1, String text2,width) {
  return Container(
    width: width/1.1,
    child: Row(
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            text1,
            style: TextStyle(fontWeight: FontWeight.bold, color: kFontColor),
          ),
        ),
        SizedBox(width: width/10,),
        Expanded(child:Text(
          text2,
          style: TextStyle(color: kFontColor),
        ) ,)
      ],
    ),
  );
}
Widget myTabBar(String text1,String text2){
  return Container(
    child: TabBar(
      unselectedLabelColor: kFontColor,
      onTap: (index) {},
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Color(0xFF74BCC2), Color(0xFF649AB8)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0, 0.8],
        ),
      ),
      tabs: [
        Tab(
          text: text1,
        ),
        Tab(
          text: text2,
        )
      ],
    ),
  );
}

Widget orderTile2(height){
  return   Container(

    height: height /8,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3)),
    child: Row(
      children: [
        Container(
          //    padding: EdgeInsets.only( right: 10),
            height: height / 8,
            width: height / 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/a.png',
                fit: BoxFit.cover,
              ),
            )),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Hat',
                  style: TextStyle(
                      fontSize: 13,
                      color: kFontColor,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'QTY',
                      style: TextStyle(
                          fontSize: 13,
                          color: kFontColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  '100 QR',
                  style: TextStyle(
                      fontSize: 13,
                      color: kFontColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget pageView2Tile1(String text, height) {
  return Container(
    alignment: Alignment.centerLeft,
    width: double.infinity,
    height: height / 17,
    margin: EdgeInsets.only(
      bottom: 10,
    ),
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: kPrimaryColor,
    child: Text(
      text,
      style: TextStyle(
          color: kFontColor, fontSize: 17, fontWeight: FontWeight.bold),
    ),
  );
}

Widget pageView2Tile2(widget, height) {
  return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: height / 17,
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: widget);
}