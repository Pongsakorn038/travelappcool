import 'package:flutter/material.dart';
import 'Feed.dart';
import 'UserProfile.dart';
import 'OtherProfile.dart';
class myNavigation extends StatefulWidget {
  const myNavigation({super.key});

  @override
  State<myNavigation> createState() => _myNavigationState();
}

class _myNavigationState extends State<myNavigation> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
   Feedpage(),
   OtherProfilepage(),
   UserProfile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ), 
    );
  }
}