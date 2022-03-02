import 'package:basit/constants.dart';
import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:multiselect_formfield/multiselect_formfield.dart';
class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final routeName = '/addProduct';
//  List? _myActivities;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String countryId = '';
    List<String> country = [
      "America",
      "Brazil",
      "Canada",
      "India",
      "Mongalia",
      "USA",
      "China",
      "Russia",
      "Germany"
    ];
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar(actions: [Container()], text: 'Add product'),
      body: Container(
        // margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: height / 3.5,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF74BCC2), Color(0xFF649AB8)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 0.8],
                      ),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/camera.png'),
                    ),
                  ),
                  Positioned(
                    right: 25,
                    bottom: 35,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white38),
                        child: Center(
                          child: Text(
                            'More',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              addProTextField(width/1.1, height/15, 'Product name en'),
              addProTextField(width/1.1, height/15, 'Product name ar'),
              addProTextField(width/1.1, height/15, 'Description en'),
              addProTextField(width/1.1, height/15, 'Description ar'),
             // dropdownTextField(country, countryId),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    addProTextField(width/2.5, height/15, 'Current price'),

                    addProTextField(width/2.5, height/15, 'Old price'),
                  ],
                ),
              ),
              addProTextField(width/1.1, height/15, 'Choose Category'),
              SizedBox(height: 40,),
              customButton(context, 'Save', 15, 1.5),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}

Widget addProTextField(width, height, String text) {
  return Container(
      height: height ,
      width: width ,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15,),
          child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: TextStyle(
                    fontSize: 13,
                      color: kFontColor, fontWeight: FontWeight.bold)))));
}

// Widget dropdownTextField(List<String> country, String country_id){
//   return  DropDownField(
//
//     onValueChanged: (dynamic value) {
//       country_id = value;
//     },
//     value: country_id,
//     hintText: 'Choose a country',
//     labelText: 'Country',
//     items: country,
//   );
// }
