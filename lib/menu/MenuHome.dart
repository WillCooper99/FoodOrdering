// Account.dart

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MenuHome extends StatelessWidget {
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
        onPressed: () {},
        child: const Text(
            'Beverages',
            style: TextStyle(fontSize: 20)
        ),
      ),

        const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          child: const Text(
              'Daily Bakery',
              style: TextStyle(fontSize: 20)
          ),
        ),

        ],
      ),

    );
  }
}

