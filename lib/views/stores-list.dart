import 'package:basit/constants.dart';
import 'package:basit/widgets/customer-drawer.dart';
import 'package:basit/widgets/stores-list-item.dart';
import 'package:flutter/material.dart';
import 'package:basit/widgets/my-widgets.dart';

class StoresList extends StatelessWidget {
  final String catName;

  StoresList(this.catName);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: appBar(
          actions: [
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.view_headline_sharp,
                  color: kFontColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: kFontColor,
                ))
          ],
          text: this.catName,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                  indicatorWeight: 3.5,
                  labelColor: kFontColor,
                  indicatorColor: kFontColor,
                  labelStyle: TextStyle(fontSize: 15),
                  tabs: <Widget>[
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Women',
                    ),
                    Tab(
                      text: 'Kids',
                    ),
                    Tab(
                      text: 'Men',
                    ),
                    Tab(
                      text: 'Wedding',
                    ),
                  ]),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 25);
                  },
                  itemBuilder: (index, context) => StoresListItem(),
                  itemCount: 5,
                ),
              ),
            )
          ],
        ),
        drawer: AppDrawer(),
      ),
    );
  }
}
