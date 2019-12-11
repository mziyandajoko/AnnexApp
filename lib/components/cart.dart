import 'package:flutter/material.dart';

import 'cart_product.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0.0, 
        title: Text('Cart'),
        backgroundColor: Colors.red[300],
          actions: <Widget>[          
            IconButton(
              icon: const Icon(Icons.search),
            tooltip: 'Show Search Bar',
            onPressed: () {},

            ),
          ],          
        ),

        body: CartProduct(),
    );
  }
}
