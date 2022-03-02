import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';

//import 'package:custom_switch/custom_switch.dart';
import 'package:basit/widgets/custom-switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import '../constants.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    bool _enable = false;
    bool status = false;
    return Scaffold(
      appBar: appBar(actions: [Container()], text: 'Settings'),
      backgroundColor: kPrimaryColor,
        body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                customTile(Icons.notifications, 'Notification', Container(child: customSwitch())),
                Divider(
                  color: kFontColor,
                  thickness: 1,
                ),
                customTile(
                    Icons.language,
                    'Notification',
                  Container(width: 72,
                     child:
                     Row(
                         children: [
                           Text(
                             'EN',
                             style: TextStyle(color: kFontColor),
                           ),
                           IconButton(
                               color: kFontColor,
                               onPressed: () {},
                               icon: Icon(Icons.arrow_forward_ios_outlined))
                         ]
                     )
                  )
               ),
                Divider(
                  color: kFontColor,
                  thickness: 1,
                ),
                customTile(
                    Icons.password_sharp, 'Change password',  IconButton(
                    color: kFontColor,
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined))),
                Divider(
                  color: kFontColor,
                  thickness: 1,
                ),
                customTile(
                    Icons.admin_panel_settings, 'Terms of use',  IconButton(
                    color: kFontColor,
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined))),
                Divider(
                  color: kFontColor,
                  thickness: 1,
                ),
                customTile(Icons.privacy_tip, 'Privacy policy',  IconButton(
                  color: kFontColor,
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined))),
                Divider(
                  color: kFontColor,
                  thickness: 1,
                ),
                customTile(Icons.exit_to_app, 'Sign out',  Container(width: 20,)),
                Divider(
                  color: kFontColor,
                  thickness: 1,
                ),
              ],
            )));
  }
}

Widget customSwitch() {
  return Transform.scale(
    scale: 0.5,
    child: LiteRollingSwitch(
      value: true,
      textSize: 0,
      colorOn: Color(0xffC2D5E0),
      colorOff: Color(0xffC2D5E0),
      iconOn: Icons.circle,
      iconOff: Icons.circle,
      onChanged: (bool state) {
        print('turned ${(state) ? 'on' : 'off'}');
      },
    ),
  );
}

Widget customTile(icon, title, widget) {
  return ListTile(
    leading: Icon(
      icon,
      color: kFontColor,
    ),
    title: Text(title,
        style: TextStyle(
            color: kFontColor, fontSize: 15, fontWeight: FontWeight.bold)),
    trailing: widget,
  );
}
