import 'package:flutter/material.dart';
import 'package:groceryappdemo/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text('GroceryApp'),
        backgroundColor: Colors.amberAccent,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(icon: Icon(Icons.person),
          label: Text('Sign Out'),
          onPressed: () async {
            await _auth.signOut();
          },)
        ],
      ),
    );
  }
}