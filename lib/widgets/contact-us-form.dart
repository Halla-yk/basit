import 'package:flutter/material.dart';

import '../constants.dart';

class ContactUsForm extends StatefulWidget {


  @override
  _ContactUsFormState createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
  late String email, fullName, message;
  static GlobalKey<FormState> globalkey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
         Form(
            key:  globalkey,
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: kFontColor),
                      borderRadius: new BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: kFontColor),
                              border: InputBorder.none,
                            )))),
                SizedBox(height: 5,),

                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: kFontColor),
                      borderRadius: new BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: TextStyle(color: kFontColor),
                              border: InputBorder.none,
                            )))),
                SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: kFontColor),
                      borderRadius: new BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: kFontColor),
                              hintText: 'Message',
                              border: InputBorder.none,
                            )))),

              ],
            ),



        );
  }
}
