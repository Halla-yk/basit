import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ServicesProviders extends StatelessWidget {
  final routeName = '/servicesProviders';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: kPrimaryColor,
        appBar: appBar(actions: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.view_headline_sharp,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ))
        ], text: 'Service Providers'),
        body: Container(
          margin: EdgeInsets.all(25),
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 30),
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: GestureDetector(
                    onTap: () {}, child: servicesProItem(context, 'text')),
              );
            },
          ),
        ));
  }
}

Widget servicesProItem(context, String text) {
  return GridTile(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 0.0), //(x,y)
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/servicespro.png',fit: BoxFit.cover,),
            // child: Image(
            //   image: NetworkImage(
            //       'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
            // ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Saleh', style: TextStyle(color: kFontColor)),
                Text('saleh@gmail.com', style: TextStyle(color: kFontColor)),
                Text('+ 972565645636', style: TextStyle(color: kFontColor)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: kFontColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: MaterialButton(
              onPressed: () async {},
              child: Text(
                'Photographer',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
