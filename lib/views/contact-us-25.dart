import 'package:basit/widgets/contact-us-form.dart';
import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basit/constants.dart';

class ContactUs extends StatelessWidget {
  final routeName = '/contactUs';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(actions: [Container()], text: 'Contact us'),
      body:
          // CustomPaint(
          //   painter: BluePainter(),
          //   child:
          SingleChildScrollView(
            child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: height / 3.5,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.cyanAccent,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Contact Info',
                style: TextStyle(
                    color: kFontColor, fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              contactInfoTile(
                  height, 'Info@Hexacit.com', 'assets/images/email.png'),
              contactInfoTile(height, '+ 655665777', 'assets/images/mobile.png'),
              contactInfoTile(
                  height, '+ 655665777', 'assets/images/telephone.png'),
              SizedBox(
                height: 30,
              ),
              Text(
                'Social media',
                style: TextStyle(
                    color: kFontColor, fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  socialMedia('assets/images/facebook.png'),
                  SizedBox(
                    width: 15,
                  ),
                  socialMedia('assets/images/twitter.png'),
                  SizedBox(
                    width: 15,
                  ),
                  socialMedia('assets/images/insta.png'),
                  SizedBox(
                    width: 15,
                  ),Text('@HexaCit',style: TextStyle(color: kFontColor))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Contact form',
                style: TextStyle(
                    color: kFontColor, fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ContactUsForm(),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: width / 6,vertical:width / 15),
                  child: customButton(context, 'Send', 14, 1.5)),
            ],
        ),
      ),
          ),
      //  ),
    );
  }
}

Widget contactInfoTile(height, text, image) {
  return Container(
    margin: EdgeInsets.only(top: 7),
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.white),
    child: ListTile(
      leading: Image.asset(
        image,
        height: 30,
      ),
      title: Text(
        text,
        style: TextStyle(color: kFontColor),
      ),
    ),
  );
}

Widget socialMedia(image) {
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: kFontColor, width: 1),
    ),
    child: Image.asset(image),
  );
}
// Widget contactInfoTile(height) {
//   return Container(
//     padding: EdgeInsets.all(20),
//     width: 300,
//     height: 70,
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
//     child: Row(
//       children: [
//         Container(width:10,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:  Radius.zero,
//           topRight: Radius.circular(20.0),
//           bottomLeft: Radius.zero,
//           bottomRight: Radius.circular(20.0),), color:Colors.amberAccent,),),
//         Container(
//          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:  Radius.zero,
//            topRight: Radius.circular(20.0),
//            bottomLeft: Radius.zero,
//            bottomRight: Radius.circular(20.0),), color:Colors.amberAccent,),
//           height: height/30,
//           padding: EdgeInsets.all(20),
//
//           child: ListTile(
//             leading: Image.asset('assets/images/email.png'),
//             title: Text(
//               'Info@Hexacit.com.',
//               style: TextStyle(color: kFontColor),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
// class BluePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final height = size.height;
//     final width = size.width;
//     Paint paint = Paint();
//
//     Path mainBackground = Path();
//     mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
//     paint.color = Colors.blue.shade700;
//     canvas.drawPath(mainBackground, paint);
//
//     Path ovalPath = Path();
//     // Start paint from 20% height to the left
//     ovalPath.moveTo(0, height * 0.2);
//
//     // paint a curve from current position to middle of the screen
//     ovalPath.quadraticBezierTo(
//         width * 0.45, height * 0.25, width * 0.51, height * 0.5);
//
//     // Paint a curve from current position to bottom left of screen at width * 0.1
//     ovalPath.quadraticBezierTo(width * 0.58, height * 0.8, width * 0.1, height);
//
//     // draw remaining line to bottom left side
//     ovalPath.lineTo(0, height);
//
//     // Close line to reset it back
//     ovalPath.close();
//
//     paint.color = Colors.blue.shade600;
//     canvas.drawPath(ovalPath, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return oldDelegate != this;
//   }
//}
