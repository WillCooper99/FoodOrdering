// main.dart

import 'package:flutter/material.dart';

import './screens/FirstScreen.dart';
import './screens/SecondScreen.dart';
import './screens/ThirdScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_circle)),
                Tab(icon: Icon(Icons.local_dining)),
                Tab(icon: Icon(Icons.shopping_cart))
              ],
            ),
            title: Text('McGlynns Food2Go'),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}