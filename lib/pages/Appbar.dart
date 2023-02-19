import 'package:flutter/material.dart';
import 'package:travelappcool/pages/Feed.dart';
import 'package:travelappcool/pages/UserProfile.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 18, 44, 19),
            title: Text('Travel Mangcool'),
            actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){

                  },
                ),
                 IconButton(
                  icon: Icon(Icons.message),
                  onPressed: (){

                  },
                ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Feedpage(),
              UserProfile(),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
