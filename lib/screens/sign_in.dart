import 'file:///C:/Users/K.S.HETTIARACHCHI/AndroidStudioProjects/Dash-app/lib/screens/auth.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}



class _SignInState extends State<SignIn> {
  final AuthService _auth= AuthService();
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
            child: Text('sign in Anon'),
            onPressed:() async{
            dynamic result= await _auth.signInAnon();
            if (result==null){
                  print('error');
            }else{
               print('sign in');
               print(result.uid);
                  }
            }

          ),

    )
    );
  }
}
