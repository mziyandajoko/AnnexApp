import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({Key key, @required this.title});
  final String title;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(

    
      appBar: AppBar(
        elevation: 0.0, 
        title: Text(title),
        backgroundColor: Colors.red[300],
          actions: <Widget>[          
            IconButton(
              icon: const Icon(Icons.search),
            tooltip: 'Show Search Bar',
            onPressed: () {},

            ),
            IconButton(
              icon:  const Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {},
            ),
          ],          
        ),

        drawer: Drawer(child: 
              ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(),
                    accountEmail: Text('joko.mzee@gmail.com'),
                    accountName: Text('Mziyanda Joko'),

                  ),
                  InkWell(
                      onTap: (){},
                      child: ListTile(
                      title: Text('Home'),
                      leading: Icon(Icons.home),
                    ),
                  ),
                  InkWell(
                      onTap: (){},
                      child: ListTile(
                      title: Text('My Account'),
                      leading: Icon(Icons.person),
                    ),
                  ),
                  InkWell(
                      onTap: (){},
                      child: ListTile(
                      title: Text('Catagories'),
                      leading: Icon(Icons.grid_on),
                    ),
                  ),
                  InkWell(
                      onTap: (){},
                      child: ListTile(
                      title: Text('favarite'),
                      leading: Icon(Icons.favorite),
                    ),
                  ),
                  InkWell(
                      onTap: (){},
                      child: ListTile(
                      title: Text('My Order'),
                      leading: Icon(Icons.shopping_basket),
                    ),
                  ),
                  InkWell(
                      onTap: (){},
                      child: ListTile(
                      title: Text('Settings'),
                      leading: Icon(Icons.settings),
                    ),
                  ),
                  InkWell(
                      onTap: (){},
                      child: ListTile(
                      title: Text('info'),
                      leading: Icon(Icons.question_answer),
                    ),
                  ),
                ],

              ),
        ),
    );
  }
}