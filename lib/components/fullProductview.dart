import 'package:flutter/material.dart';

// NavBar navbar = NavBar();

class Productviewer extends StatefulWidget {
  final productDetailName;
  final productDetailPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  Productviewer(
      {this.productDetailName,
      this.productDetailOldPrice,
      this.productDetailPicture,
      this.productDetailPrice});

  @override
  _ProductviewerState createState() => _ProductviewerState();
}

class _ProductviewerState extends State<Productviewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Annex'),
        backgroundColor: Colors.red[300],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Show Search Bar',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.white,
            child: GridTile(
              child: Container(
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '\$${widget.productDetailPrice}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '\$${widget.productDetailOldPrice}',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
// ==================== setting up  drop down Buttons =====================

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              // =========  Color BUTTON  =====
              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              // ===== QTY BUTTON =====

              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'QTY',
                        ),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Buy Now',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
