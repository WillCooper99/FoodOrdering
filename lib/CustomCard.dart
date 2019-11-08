import 'package:flutter/material.dart';
import 'package:mcglynns_food2go/DBA.dart';
import 'package:mcglynns_food2go/User.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.title, this.price, this.uid});

  final uid;
  final title;
  final price;

  final dba = new DBA(collection: null);

  User _currentUser;
  _CustomCartPageState(var uid) {
    _currentUser = new User(uid);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              children: <Widget>[
                Text(title),
                ButtonTheme.bar(
                    child: ButtonBar(children: <Widget>[
                  FlatButton(
                    child: const Text('Add to Cart'),
                    onPressed: () {
                      dba.createRecord(_currentUser.uid, [title], [price]);
                    },
                  ),
                ]))
              ],
            )));
  }
}
