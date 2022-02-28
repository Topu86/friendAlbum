import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendbook/page/profile.dart';

import 'home_page.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Homepage(),
    Profile(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        selectedLabelStyle:
        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.favorite_outline), title: Text("Favourite")),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.add_shopping_cart),
          //   title: Text("Cart"),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
