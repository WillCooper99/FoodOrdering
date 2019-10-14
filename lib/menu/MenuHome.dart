import 'package:flutter/material.dart';

class MenuHome extends StatefulWidget {
  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Text("menuHome"),
    );
  }
}
