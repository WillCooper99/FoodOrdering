// Account.dart

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MenuHome_allButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              print("I pressed the BEVERAGES button");
            },
            child: const Text('Beverages', style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              print("I pressed the DAILY BAKERY button");
            },
            child: Text('Daily Bakery', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              print("I pressed the DELI DAILY button");
            },
            child: Text('Deli Daily', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              print("I pressed the GRAB & GO button");
            },
            child: Text('Grab & Go', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              print("I pressed the GRILL DAILY button");
            },
            child: Text('Grill Daily', style: TextStyle(fontSize: 20)),
          ),

        ],
      ),
    );
  }
}
