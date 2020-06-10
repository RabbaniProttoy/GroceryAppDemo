import 'package:flutter/material.dart';
import 'package:groceryappdemo/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
  final AuthService _authenticate = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.amberAccent[400],
        elevation: 0.0,
        title: Text('Sign in to GroceryApp'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign in Anonymously'),
          onPressed: () async {
           dynamic result = await _authenticate.signinAnonymous();
           if (result == null) {
             print('Signing in error');
           } else {
             print('Signed in successfully');
             print(result);
           }
          },
        ),
      ),
    );
  }
}