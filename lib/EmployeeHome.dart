import 'package:flutter/material.dart';
import 'package:mcglynns_food2go/Account.dart';
import 'package:mcglynns_food2go/Cart.dart';
import 'package:mcglynns_food2go/menu/menuHome.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmployeeHomePage extends StatefulWidget {
  EmployeeHomePage({Key key, this.title, this.uid}) : super(key: key);

  final String title;
  final String uid;

  @override
  _EmployeeHomePageState createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.red,
          title: new Text('McGlynns Food2Go')
      ),
      body: Center(
          child: new Text('Welcome to Employee Mode!')
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text('employeename'),
                accountEmail: new Text('user@gmail.com'),
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
