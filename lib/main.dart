import 'package:ecommerce_app/components/cart.dart';
import 'package:flutter/material.dart';
import 'components/carousel.dart';

import 'components/horizontal_listView.dart';
import 'components/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Annex App',
      home: MyHomePage(title: 'Annex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // creating carousel Widget

    ImageCarousel imageCarousel = ImageCarousel();

    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(widget.title),
          backgroundColor: Colors.green[300],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Show Search Bar',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                currentAccountPicture: CircleAvatar(),
                accountEmail: Text('joko.mzee@gmail.com'),
                accountName: Text('Mziyanda Joko'),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Catagories'),
                  leading: Icon(Icons.grid_on),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('favarite'),
                  leading: Icon(Icons.favorite),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Order'),
                  leading: Icon(Icons.shopping_basket),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('info'),
                  leading: Icon(Icons.question_answer),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            imageCarousel,
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Category'),
            ),
            HorizontalListView(),
            Container(
              height: 350.0,
              padding: EdgeInsets.all(30.0),
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
