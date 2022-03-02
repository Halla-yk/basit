import 'package:basit/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basit/widgets/my-widgets.dart';

class ProductDetailsPageView extends StatefulWidget {
  @override
  _ProductDetailsPageViewState createState() => _ProductDetailsPageViewState();
}

class _ProductDetailsPageViewState extends State<ProductDetailsPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width/1.1,
            child: Stack(
                alignment:  Alignment.center,clipBehavior: Clip.none, children: [
              PageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  controller: _pageController,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/a.png',fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/jewellery.png',
                        ),
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/jewellery.png',
                        ),
                      ),
                    )
                  ]),
              Positioned(
                  right: 30,
                  bottom:-20,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  )),

            ]),
          ),SizedBox(height: 10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                      (index) => buildDot(
                      index: index,
                      currentPage: currentPage,
                      color1:Color(0xFF649AB8).withOpacity(0.5),
                      color2: kFontColor)),
            ),
          ),
        ],
      ),
    );
  }
}
