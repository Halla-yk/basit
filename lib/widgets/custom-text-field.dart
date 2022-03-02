import 'package:flutter/material.dart';
import 'package:basit/constants.dart';
class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final dynamic Function(String?) onClick;
  final String? Function(String?) validate;
  final Function? onTap;
  CustomTextField(
      { required this.onClick,
        required this.hint,
        this.controller,
        this.onTap,
        required this.validate});


  @override
  Widget build(BuildContext context) {
    return   Container(

      margin: EdgeInsets.only(left: 20,right: 20),

      child: TextFormField(

        onTap: (){},
        controller: controller,
        onSaved: onClick,
        validator: validate,
        obscureText: hint == 'Password' || hint == 'Retype password' ? true : false,
        //علشان يعمل الباسورد نجوم
        cursorColor: kFontColor,
        style: TextStyle(
            color: kFontColor,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.mail_outline,color: Colors.black26,),
          fillColor:  Colors.transparent,
          focusedBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: kFontColor)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black12,width: 2.5),
          ),

          hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
          hintText: hint,
          filled: true,

        ),
      ),
    );
  }
}

