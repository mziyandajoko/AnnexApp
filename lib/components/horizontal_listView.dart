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
              imageLocation: 'images/cats/images.jpeg',
              imageCaption: 'Adventure',
            ),
            Catagory(
              imageLocation: 'images/cats/JHB.jpeg',
              imageCaption: 'Poetry',
            ),
            Catagory(
              imageLocation: 'images/cats/makers.jpeg',
              imageCaption: 'formal',
            ),
            Catagory(
              imageLocation: 'images/cats/necesarrEvil.jpeg',
              imageCaption: 'Adventure',
            ),
            Catagory(
              imageLocation: 'images/cats/principle.jpeg',
              imageCaption: 'Poetry',
            ),
            Catagory(
              imageLocation: 'images/cats/reader.jpeg',
              imageCaption: 'Noverl',
            ),
            Catagory(
              imageLocation: 'images/cats/whiteSlag.jpeg',
              imageCaption: 'history',
            ),
          ],
        ));
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
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          height: 80.0,
          child: ListTile(
            title: Image.asset(imageLocation),
            subtitle: Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
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
