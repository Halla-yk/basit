import 'package:flutter/material.dart';
import 'package:basit/constants.dart';
class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() =>
      _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final  PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomLeft,
        children: [Container(
            height: MediaQuery.of(context).size.height/3.5,
            width: double.infinity,
            child: PageView(onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },controller: _pageController, children: [
              Container(
                child: Image.asset('assets/images/homePageView1.png',fit: BoxFit.cover),
                width: double.infinity,
                height: 120,
              ),
              Container(
                child: Image.asset('assets/images/homePageView1.png',fit: BoxFit.cover),
                width: double.infinity,
                height: 120,
              ),
              Container(
                child: Image.asset('assets/images/homePageView1.png',fit: BoxFit.cover,),
                width: double.infinity,
                height: 120,
              )
            ])),
          Positioned(
            left: 20,
            bottom: 5,
            child: Row(
                children: List.generate(
                  3,
                      (index) => buildDot(index: index,currentPage: currentPage),
                )),
          )
        ]
    );
  }
}
Widget buildDot({required int index,required int currentPage}) {
  return Container(
    margin: EdgeInsets.all(4),
    height: 7,
    width: 7,
    decoration: BoxDecoration(
      border: Border.all(color: kPrimaryColor),
      borderRadius: BorderRadius.circular(3),
      color: currentPage == index ? Colors.white24 : Colors.white,
    ),
  );
}
