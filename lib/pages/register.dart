import 'package:ecommerce_app/components/constants.dart';
import 'package:ecommerce_app/components/utilityButton.dart';
import 'package:ecommerce_app/services/auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AuthService _auth = AuthService(); 

  // Text Field state

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) { 
    return Scaffold( 
       appBar: AppBar( 
         backgroundColor: Colors.green[300],
         elevation: 0.0,
         title: Text('Sign up to Annex'),
         actions: <Widget>[
           FlatButton.icon(
             icon: Icon(Icons.person),
             label: Text('signIn'),
           )
         ],
       ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                obscureText: true,
                onChanged: (val){
                  setState(() => password = val);

                },
              ),
              UtilityButtons(title: 'LogIn',
              colour: Colors.green,
              onPressed: () async{
                dynamic results = await _auth.signInAnon();
                print(email);
                print(password);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
