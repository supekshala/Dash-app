//import 'file:///C:/Users/K.S.HETTIARACHCHI/AndroidStudioProjects/Dash-app/lib/screens/wrapper.dart';
import 'package:dash_app/models/member.dart';
import 'package:dash_app/screens/wrapper.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'authentictions/authservice.dart';

Future<void> main() async {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Member>.value(
      value:AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

