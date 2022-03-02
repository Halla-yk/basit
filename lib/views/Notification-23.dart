import 'package:basit/constants.dart';
import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';

class MyNotification extends StatelessWidget {
  final routeName = '/notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
      appBar: appBar(actions: [Container()], text: 'Notifications'),
      body: Container(
        margin: EdgeInsets.only(top: 20,left: 20),
        child: ListView.builder(
          itemBuilder: (context, index) => notificationTile(),
          itemCount: 12,
        ),
      ),
    );
  }
}

Widget notificationTile() {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.all(10),
    child: ListTile(
      leading: Image.asset('assets/images/notification.png'),
      title: Text(
        'Lorem Ipsum is simply dummy text ',
        style: TextStyle(
            color: kFontColor, fontWeight: FontWeight.bold, fontSize: 13),
      ),
      subtitle: Text('15 DEC 2018',
          style: TextStyle(color: kFontColor, fontSize: 10)),
    ),
  );
}
