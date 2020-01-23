import 'package:ecommerce_app/components/cart.dart';
import 'package:ecommerce_app/home/home.dart';
import 'package:ecommerce_app/pages/logIn.dart';
import 'package:flutter/material.dart';


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

    

    return Container(
      child: LoginScreen()  
    );
  }
}
