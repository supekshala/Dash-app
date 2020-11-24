import 'package:dash_app/models/member.dart';

import  'package:flutter/material.dart';
import 'file:///C:/Users/K.S.HETTIARACHCHI/AndroidStudioProjects/Dash-app/lib/screens/athunticate.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either home or authenticate screen
final user = Provider.of<Member>(context);
//print(Member);

if(user==null){

    return Athunticate();
  }
  else{
    return Home();
    
  }
}
}