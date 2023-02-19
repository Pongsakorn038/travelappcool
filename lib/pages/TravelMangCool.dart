// import 'package:flutter/material.dart';
// import 'Feed.dart';
// import 'UserProfile.dart';

// class myNavigation extends StatefulWidget {
//   const myNavigation({Key? key}) : super(key: key);

//   @override
//   State<myNavigation> createState() => _myNavigationState();
// }

// class _myNavigationState extends State<myNavigation> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My App'),
//         bottom: TabBar(
//           tabs: const [
//             Tab(text: 'Feed'),
//             Tab(text: 'Profile'),
//           ],
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//         ),
//       ),
//       body: TabBarView(
//         children: [
//           Feedpage(),
//           UserProfile(),
//         ],
//         controller: TabController(
//           length: 2,
//           initialIndex: 0,
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Like',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         selectedFontSize: 13.0,
//         unselectedFontSize: 13.0,
//       ),
//     );
//   }
// }
