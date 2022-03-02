import 'package:basit/views/signin-form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Template extends StatefulWidget {
  final routeName = 'signInScreen';
  final Widget body;
  Template(this.body);

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          constraints: BoxConstraints.expand(),
          child: Container(
            child: Image.asset('assets/images/sign-image.png',
                fit: BoxFit.cover),
            width: double.infinity,
          ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/logo1.png",
                height: height / 6,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: height / 1.5,
                width: width / 1.3,
                child: Card(
                  color: Color(0xFFffffff).withOpacity(0.85),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  elevation: 10,
                  child: widget.body
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
