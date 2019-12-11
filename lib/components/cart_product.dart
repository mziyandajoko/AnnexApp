import 'package:ecommerce_app/components/products.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  // this fetches the json Array from products
//  var  CurrentCartProduct = Products.productsList;

  var CurrentCartProduct = [
    {
      'name': 'blazer',
      'picture': 'images/products/blazer1.jpeg',
      'price': 12,
      'old_price': 20,
      'quantity': '1',
    },
    {
      'name': 'hills',
      'picture': 'images/products/hills1.jpeg',
      'price': 12,
      'old_price': 20,
      'quantity': '1',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CurrentCartProduct.length,
        itemBuilder: (context, index) {
          return CartSingleItem(
            CartProductName: CurrentCartProduct[index]['name'],
            CartProductPrice: CurrentCartProduct[index]['price'],
            CartProductOldPrice: CurrentCartProduct[index]['old_price'],
            CartProductQTY: CurrentCartProduct[index]['quantity'],
            CartProductPicture: CurrentCartProduct[index]['picture'],
          );
        });
  }
}

// ==============   Setting product specificstion   ========

class CartSingleItem extends StatelessWidget {
  final CartProductName;
  final CartProductPrice;
  final CartProductOldPrice;
  final CartProductQTY;
  final CartProductPicture;
  CartSingleItem(
      {this.CartProductName,
      this.CartProductOldPrice,
      this.CartProductPrice,
      this.CartProductQTY,
      this.CartProductPicture});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          CartProductPicture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(CartProductName),
        subtitle: Column(),
        trailing: Column(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_up),
            ),
            // Text(CartProductQTY),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
