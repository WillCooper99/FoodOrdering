import 'package:flutter/material.dart';
import 'package:mcglynns_food2go/DBACart.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Cart'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: DBACart(collection: 'Cart'),
        ),
      ),
    );
  }
}
