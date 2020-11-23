
import 'package:dash_app/member.dart';
import 'package:firebase_auth/firebase_auth.dart';






class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //FirebaseAuth _auth = FirebaseAuth.instance;
  // create new user object based on FirebaseUser
 Member _fromFirebaseUser(User user)
  {
  return user != null ? Member(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<Member> get user{
   return _auth.authStateChanges()
   //.map((User user)=>_userFromUser(user));
   .map(_fromFirebaseUser);

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