import 'package:ecommerce_app/home/home.dart';
import 'package:ecommerce_app/models/user.dart';
import 'package:ecommerce_app/pages/logIn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<User>(context);
    // return euther or Authonticate widget
  if (user == null ) {
    return LoginScreen(); 
  } else {
    return Home();
      }
     
  }
}