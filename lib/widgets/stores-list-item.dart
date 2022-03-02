import 'package:basit/constants.dart';
import 'package:basit/views/product-details.dart';
import 'package:flutter/material.dart';
import 'package:basit/routes.dart';

class StoresListItem extends StatefulWidget {
  @override
  _StoresListItemState createState() => _StoresListItemState();
}

class _StoresListItemState extends State<StoresListItem> {
  bool isFavorite = true;

  void toggleIsFavorite() {
    setState(() {
      if (isFavorite == false) {
        isFavorite = true;
      } else {
        isFavorite = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        print('hello');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ProductDetails(),
          ),
        );
      },
      child: Container(
        width: width / 1.1,
        height: height / 4.5,
        child: Card(
          elevation: 7,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Row(
            children: [
              Container(
                  height: height / 4.5,
                  width: width / 3.3,
                  child: Image.asset(
                    'assets/images/a.png',
                    fit: BoxFit.cover,
                  )),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 18, color: kFontColor),
                          ),
                          Text(
                            'close',
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'sdfghjkl;qwertyuiopqwertyuiopqwertyuioqwertyuiopqwertyuiop',
                        style: TextStyle(fontSize: 10, color: Colors.black38),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.only(
                            top: 3, bottom: 3, left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: const Color(0xff7AC9C6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'Kids',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: kFontColor,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Abu Dhabi',
                                    style: TextStyle(
                                        fontSize: 13, color: kFontColor),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              child: IconButton(
                                  color: Colors.red,
                                  icon: Icon(isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border_sharp),
                                  onPressed: () {
                                    toggleIsFavorite();
                                  }),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
