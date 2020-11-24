
import 'package:dash_app/authentictions/authservice.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
   // var color = Color;
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: Text("Aurora Clinet"),
        elevation: 0.0,
        actions: <Widget> [
          FlatButton.icon(
            icon:Icon(Icons.person),
            label: Text('logout'),
            onPressed:()async{
              await _auth.signout();
            },
          )
        ],

      ),
    );
      
  }
}

