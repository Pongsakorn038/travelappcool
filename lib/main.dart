import 'package:flutter/material.dart';
import 'package:travelappcool/pages/Feed.dart';
import 'package:travelappcool/pages/OtherProfile.dart';
import 'package:travelappcool/pages/TravelMangCool.dart';
import 'package:travelappcool/pages/UserProfile.dart';
import 'package:travelappcool/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myNavigation(),
    );
  }
}
