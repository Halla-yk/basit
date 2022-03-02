import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return

        Container(
          margin: EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          "assets/images/homePageView1.png",
                          fit: BoxFit.fitHeight,
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.height /7,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Hlo')
                    ],
                  ),
                ),
              );
            },
          ),

    );
  }
}
