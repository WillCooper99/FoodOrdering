import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

final databaseRefrence = Firestore;

var user = databaseRefrence.;
var name, email, photoUrl, uid, emailVerified;

if (user != null) {
name = user.displayName;
email = user.email;
photoUrl = user.photoURL;
emailVerified = user.emailVerified;
uid = user.uid;  // The user's ID, unique to the Firebase project. Do NOT use
// this value to authenticate with your backend server, if
// you have one. Use User.getToken() instead.
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Account'),
        backgroundColor: Colors.red,
      ),
      body: Center(child: new Text('I am the account page')),
    );
  }
}
