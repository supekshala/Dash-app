
import 'package:firebase_auth/firebase_auth.dart';




class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create new user object based on FirebaseUser
 User _fromFirebaseUser(User user)
  {
  return user != null ? User(uid: user.uid) : null;
  }
// sign anno
  Future signInAnon() async{
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _fromFirebaseUser(user);
    }
    catch  (e) {

      print(e.toString());
      return null;
    }
  }
//sign email and password




//sign out
}