
import 'package:dash_app/authentictions/authservice.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}



class _SignInState extends State<SignIn> {

  final AuthService _auth= AuthService();
  
  //text field state
String password='';
String email='';
  
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
          child: Form(
            child:Column(
              children:<Widget>[
                SizedBox(height:20.0 ),
                TextFormField(
                  onChanged: (val){
                    setState(()=>email=val); 
                  }

                  

                ),
                 SizedBox(height:20.0 ),
                  TextFormField(
                    obscureText: true,
                    onChanged: (val){
                     setState(()=>password=val);
                    }
                  ),
                  SizedBox(height:2-.0),
                  RaisedButton(
                    color: Colors.blue[50],
                    child: Text(
                      "Sign Inn",
                      style: TextStyle(color:Colors.white),
                      
                    ),
                    onPressed: ()async{
                      print(email);
                      print(password);

                    } ,
                  )
              ],

            ),
          ),

    )
    );
  }
}
