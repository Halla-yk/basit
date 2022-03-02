import 'package:basit/constants.dart';
import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';
import 'store-details.dart';
class StoreProducts extends StatelessWidget {
  final routeName = '/storeProducts';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        appBar: appBar(actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.view_headline))
        ], text: 'Shop details'),
        body: Container(
          //   margin: EdgeInsets.all(20),
          child: Column(children: [
            storeTile(height, width),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 50,
              width: width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: myTabBar('Products', 'Details')
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [pageView1(width), StoreDetails()]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget storeTile(height, width) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: height / 10,
                    height: height / 10,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: DecorationImage(
                        image: AssetImage('assets/images/a.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      border: Border.all(
                        color: kFontColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Rose Store',
                    style: TextStyle(
                        color: kFontColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )
                ],
              ),
            ),
            Container(
              height: height / 30,
              width: height / 17,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: kFontColor),
              child: Center(
                  child: Text(
                'Open',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              )),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          style: TextStyle(color: kFontColor, fontSize: 12),
          textAlign: TextAlign.center,
        )
      ],
    ),
  );
}

Widget pageView1(width) {
  return Container(
   // color: Colors.blue,
   margin: EdgeInsets.symmetric(horizontal: 20.0),
    //padding: EdgeInsets.all(15.0),
    child: Center(
      child: GridView.builder(
        itemCount: 6,
        gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,// قديش كل item  رح تاخد من ال width تبع الشاشة
            childAspectRatio: 400/ 500,// height/width
            crossAxisSpacing: 20.0,//المسافة من اليمين او اليسار او اسفل و فوق
           // mainAxisSpacing: 20.0
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: GestureDetector(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      "assets/images/homePageView1.png",
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.height / 2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hat',
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '24 QR',
                    style: TextStyle(
                        color: kFontColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
