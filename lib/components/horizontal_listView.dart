import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catagory(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'Silver ware',
            ),
            Catagory(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'dress',
            ),
            Catagory(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'formal',
            ),
            Catagory(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'informal',
            ),
            Catagory(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'jeans',
            ),
            Catagory(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'shoe',
            ),
            Catagory(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'tshirt',
            ),
        ],
      )
    );
  }
}

class Catagory extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  Catagory({this.imageLocation, this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell (onTap: (){},
      child: Container(
        width: 100.0,
        height: 80.0,
        child: ListTile(
          title: Image.asset(imageLocation),
          subtitle: Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.topCenter,
            child: Text(imageCaption,
            style: TextStyle(
              fontSize: 12.0,
            ),
            ),
            ),
        ),
      ),

      ),
      
    );
  }
}