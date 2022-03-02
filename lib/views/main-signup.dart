import 'package:basit/constants.dart';
import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';

class MainSignUp extends StatelessWidget {
  final routeName = '/MainSignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(actions:[Container()] , text: 'Sign up'),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/main-background.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/9,
            child: Column(
              children: [
                signUpItem(context,'assets/images/customer.png','Customer'),
                SizedBox(height: 30,),
                signUpItem(context,'assets/images/store.png','Store'),
                SizedBox(height: 30,),
                signUpItem(context,'assets/images/services-providers.png','Services providers')
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget signUpItem(BuildContext context, String imgPath, String text) {
  return Container(
    width: MediaQuery.of(context).size.height / 5,
    height: MediaQuery.of(context).size.height / 5,
    child: Card(
      color: Color(0xFFffffff).withOpacity(0.85),
      elevation: 4,
      child: Column(
        children: [
          SizedBox(height: 15),
          Image.asset(imgPath),
          SizedBox(height: 15),
          Text(text,style: TextStyle(color: kFontColor,fontSize: 12),)
        ],
      ),
    ),
  );
}
