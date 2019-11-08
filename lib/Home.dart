import 'package:flutter/material.dart';
import 'package:mcglynns_food2go/Account.dart';
import 'package:mcglynns_food2go/Cart.dart';
import 'package:mcglynns_food2go/menu/menuHome.dart';
import 'package:mcglynns_food2go/EmployeeHome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mcglynns_food2go/User.dart';


class MyHomePage extends StatefulWidget {
  String uid;
  MyHomePage(this.uid);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".




  @override
  _MyHomePageState createState() => _MyHomePageState(uid);
}

class _MyHomePageState extends State<MyHomePage> {

  User _currentUser;
  _MyHomePageState(var uid) {
        _currentUser = new User(uid);
  }

  Widget _buildChild() {
    if (_currentUser.getEmployee()) {
      return new ListTile(
          title: new Text('Employee Mode'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context, new MaterialPageRoute(
                builder: (BuildContext context) => new EmployeeHomePage()));
          }
      );
  }
    else {
      return new Container();
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
          backgroundColor: Colors.red,
          title: new Text('McGlynns Food2Go')
      ),
      body: Center(
          child: new Text('I am the homepage')
      ),
      drawer: new Drawer(

        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text(_currentUser.fname),
                accountEmail: new Text(_currentUser.email),
            ),
            new ListTile(
                title: new Text('Account'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Account()
                  )
                  );
                }
            ),
            new ListTile(
                title: new Text('Menu'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new MenuHome()
                  )
                  );
                }
            ),
            new ListTile(
                title: new Text('Cart'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Cart()
                  )
                  );
                }
            ),
            _buildChild(),
            new ListTile(
              title: new Text('Logout'),
              onTap: () {
                Navigator.of(context).pop();
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacementNamed(context, '/login');
              }
            )
          ],
        ),
      ),
    );
  }
}
