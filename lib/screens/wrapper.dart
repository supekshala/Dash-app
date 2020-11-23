import 'package:dash_app/member.dart';
import  'package:flutter/material.dart';
import 'file:///C:/Users/K.S.HETTIARACHCHI/AndroidStudioProjects/Dash-app/lib/screens/athunticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final user = Provider.of<Member>(context);
print(Member);

    return  Athunticate();
  }
}