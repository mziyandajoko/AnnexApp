import 'package:flutter/material.dart';

import 'fullProductview.dart';

class Products extends StatefulWidget {
  static get productsList => productsList;


  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productsList = [
        {
        'name':'blazer',
        'picture':'images/products/blazer1.jpeg',
        'price': 12,
        'old_price': 20,  
        },
        {
        'name':'dress',
        'picture':'images/products/dress1.jpeg',
        'price': 14,
        'old_price': 20,  
        },
        {
        'name':'hills',
        'picture':'images/products/hills1.jpeg',
        'price': 12,
        'old_price': 20,  
        },
        {
        'name':'pants',
        'picture':'images/products/pants1.jpg',
        'price': 12,
        'old_price': 20,  
        },
        {
        'name':'skt',
        'picture':'images/products/skt2.jpeg',
        'price': 12,
        'old_price': 20,  
        },
      ];
  

// createing Grid

@override
Widget  build(BuildContext context){
  return GridView.builder(
      itemCount: productsList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          productName:productsList[index]['name'],
          productPicture:productsList[index]['picture'],
          productPrice:productsList[index]['price'],
          productOldPrice:productsList[index]['old_price'],
          );
      },
    );
  
}
}

class  SingleProduct extends StatelessWidget {
    final String productName;
    final productPicture;
    final int productOldPrice;
    final int productPrice;

    SingleProduct({@required this.productName,@required this.productOldPrice,@required this.productPicture,@required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
             builder: (context) => Productviewer(
              // assigning clicked product values/ Details on product viewer page.
              productDetailName: productName,
              productDetailPrice: productPrice,
              productDetailOldPrice: productOldPrice,
              productDetailPicture:productPicture
             ),
          ),
          ),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(productName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
              ),
              
            ),
            title: Text(
              '\$$productPrice'),
            subtitle: Text(
              '\$$productOldPrice',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ),
            ), 
            child: Image.asset(
              productPicture,
              fit: BoxFit.cover,
              ),
          ),
        ),
        ),
      ),

    );
  }
}