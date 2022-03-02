import 'package:basit/widgets/product-details-pageView.dart';
import 'package:flutter/material.dart';
import 'package:basit/widgets/my-widgets.dart';

import '../constants.dart';

class ProductDetails extends StatelessWidget {
  final routeName = '/productDetails';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: kFontColor,
          ),
          onPressed: () {},
        )
      ], text: 'Product Details'),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductDetailsPageView(),
              SizedBox(
                height: 15,
              ),
              Container(
                //    width: MediaQuery.of(context).size.width/1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.remove_red_eye,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '50',
                          style: TextStyle(fontSize: 10, color: kFontColor),
                        )
                      ],
                    )),
                    Container(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.screen_share, size: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(color: kFontColor, fontSize: 10),
                        )
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                'Jewellery',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kFontColor),
              )),
              SizedBox(
                height: 15,
              ),
              Container(
                width: width / 1.3,
                child: Column(
                  children: [
                    tableRow('Category', 'Handmade', width),
                    SizedBox(
                      height: 20,
                    ),
                    tableRow('Subcategory', 'Cloth', width),
                    SizedBox(
                      height: 20,
                    ),
                    tableRow('Availability', 'Y/N', width),
                    SizedBox(
                      height: 20,
                    ),
                    tableRow('Price', '150 QR', width),
                    SizedBox(
                      height: 20,
                    ),
                    tableRow('Store name', 'Rose store', width),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Text(
                'Description',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kFontColor),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has beenthe industrys standard dummy text',
                    style: TextStyle(fontSize: 10, color: kFontColor),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(
              vertical: 20, horizontal: MediaQuery.of(context).size.width / 5),
          child: customButton(context, 'Add to cart', 14, 3)),
    );
  }
}
