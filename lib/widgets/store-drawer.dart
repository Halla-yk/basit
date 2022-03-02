import 'package:flutter/material.dart';
import 'package:basit/widgets/my-widgets.dart';
class StoreDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/logo1.png',
              height: MediaQuery.of(context).size.height / 7),
          SizedBox(height: 20,),
          customTile(Icons.local_offer_outlined, 'Statistics'),
          SizedBox(height: 5,),
          customTile(Icons.info_outline, 'Services providers'),
          SizedBox(height: 5,),
          customTile(Icons.connect_without_contact_sharp, 'Contact us'),
          SizedBox(height: 5,)
          , customTile(Icons.notifications_none_sharp, 'Notifications'),
          SizedBox(height: 5,),
          customTile(Icons.settings_sharp, 'Settings'),
          SizedBox(height: 5,),
          customTile(Icons.favorite_border_sharp, 'My favorite'),
          SizedBox(height: 5,),
          customTile(Icons.phone_android, 'My orders'),
          SizedBox(height: 5,),
          customTile(Icons.style, 'My Products'),
          SizedBox(height: 5,),
          customTile(Icons.person, 'Customers orders'),

        ],
      ),
    );
  }
}
