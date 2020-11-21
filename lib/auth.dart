import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';


class Authservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;
// sign anno
Future signInAnon() async{
  try{
    AuthResult result = _auth.signInAnonymously();
    FirebaseUser user = result.user;
    return user;
  }
  catch (e)
  print(e.toString());
  return null;
  {
}
//sign email and password
//sign out
}
