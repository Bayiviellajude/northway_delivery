import 'package:flutter/material.dart';
import 'package:northway_delivery/pages/cart.dart';
import 'package:northway_delivery/pages/category.dart';
import 'package:northway_delivery/pages/home_page.dart';

import 'package:northway_delivery/pages/notifications.dart';
import 'package:northway_delivery/pages/search.dart';
import 'package:northway_delivery/pages/start_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Northway Delivery',
      home: MyStart(),
    );
  }
}

class MyBottomNavigattionBar extends StatefulWidget {
  @override
  _MyBottomNavigattionBarState createState() => _MyBottomNavigattionBarState();
}

class _MyBottomNavigattionBarState extends State<MyBottomNavigattionBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage(),
    MyCategory(),
    MySearchPage(),
    MyNotificationsPage(),
    MyCartPage()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.indigo[900],
        unselectedItemColor: Colors.yellow[800],
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: ('HOME'),
            icon: Icon(
              Icons.home,
              color: Colors.yellow[800],
            ),
          ),
          BottomNavigationBarItem(
            label: ('CATEGORY'),
            icon: Icon(Icons.category, color: Colors.yellow[800]),
          ),
          BottomNavigationBarItem(
            label: ('SEARCH'),
            icon: Icon(Icons.search, color: Colors.yellow[800]),
          ),
          BottomNavigationBarItem(
            label: ('NOTIFICATIONS'),
            icon: Icon(Icons.notifications_active, color: Colors.yellow[800]),
          ),
          BottomNavigationBarItem(
            label: ('CART'),
            icon: Icon(Icons.shopping_cart, color: Colors.yellow[800]),
          ),
        ],
      ),
    );
  }
}
