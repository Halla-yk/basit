import 'package:basit/views/form-template.dart';
import 'package:flutter/material.dart';

import 'Home.dart';


class Onbording extends StatefulWidget {
  final routeName = "/onbording";
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  late PageController _controller;

  int currentPage = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: _controller,
                children: [
                  Container(
                    child: Image.asset('assets/images/ads1.png',
                        fit: BoxFit.cover),
                    width: double.infinity,
                  ),
                  Container(
                    child: Image.asset('assets/images/ads1.png',
                        fit: BoxFit.cover),
                    width: double.infinity,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/ads1.png',
                      fit: BoxFit.cover,
                    ),
                    width: double.infinity,
                  )
                ])),
        Positioned(
            bottom: 60,
            child: Row(
                children: List.generate(
              3,
              (index) => buildDot(index: index, currentPage: currentPage),
            ))),
        Positioned(
          right: -15,
            bottom: 20,
            child: Container(
              width: 90.0,

              child: OutlinedButton(
          child: Text(
              'Skip',
              style: TextStyle(color: Colors.white),
          ),
          style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Home(),
              ),
            );
          },
        ),
            ))
      ]),
    );
  }
}

Widget buildDot({required int index, required int currentPage}) {
  return Container(
    margin: EdgeInsets.all(4),
    height: 7,
    width: 7,
    decoration: BoxDecoration(
      
      borderRadius: BorderRadius.circular(3),
      color: currentPage == index ? Colors.white24 : Colors.white,
    ),
  );
}
