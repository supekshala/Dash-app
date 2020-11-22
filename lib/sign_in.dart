import 'package:dash_app/auth.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

final AuthService _auth= AuthService();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[10],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Sign in aurora client'),
    ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical:20.0, horizontal: 50.0, ),
          child: RaisedButton(
            child: Text('sign in action'),
            onPressed:() async{
            dynamic result= await _auth.signInAnon();
            if (result==null){
                  print('error');
            }else{
                print('sign in');
                print(result);
                  }
            }

          ),

    )
    );
  }
}
