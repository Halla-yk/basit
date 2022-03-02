import 'package:basit/widgets/grid-view.dart';
import 'package:basit/widgets/my-widgets.dart';
import 'package:flutter/material.dart';
import 'package:basit/constants.dart';
import 'package:basit/widgets/Home-page-view.dart';
import 'account.dart';
import 'cart-20.dart';
import 'categories-screen.dart';

class Home extends StatefulWidget {
  final routeName = "/Home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Home'},
    {'page': Account(), 'title': 'Account'},
    {'page': Cart(), 'title': 'Cart'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: appBar(
            actions: [IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )],
            text: _pages[_selectedPageIndex]['title']),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar:
            _createBottomNavigationBar(_selectedPageIndex, _selectPage));
  }
}

Widget _createBottomNavigationBar(
    int selectedPageIndex, Function(int) selectPage) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF74BCC2), Color(0xFF649AB8)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.0, 0.8],
        tileMode: TileMode.clamp,
      ),
    ),
    child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
        currentIndex: selectedPageIndex,
        onTap: selectPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
          // BottomNavigationBarItem(icon: Icon(Icons.view_headline),)
        ]),
  );
}
