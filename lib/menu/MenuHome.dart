// Account.dart

import 'package:flutter/material.dart';
<<<<<<< Updated upstream
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Beverages.dart';
>>>>>>> Stashed changes

class MenuHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< Updated upstream
        title: Text('Menu'),
=======
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Beverages()),
            );
          },
        ),
>>>>>>> Stashed changes
      ),
    );
  }
}