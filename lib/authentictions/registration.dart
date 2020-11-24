import 'package:dash_app/authentictions/authservice.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {


  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
    
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
        title: Text('Sign up aurora client'),
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
                     setState(()=> password=val);
                    }
                  ),
                  SizedBox(height:2-.0),
                  RaisedButton(
                    color: Colors.blue[50],
                    child: Text(
                      "Sign up",
                      style: TextStyle(color:Colors.white),
                      
                    ),
                    onPressed: ()async{
                      

                    } ,
                  )
              ],

            ),
          ),

    )
    );
  }
}