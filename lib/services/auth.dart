import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceryappdemo/models/user.dart';

class AuthService
{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user from FirebaseUser

  User _userfromFirebaseUser(FirebaseUser user) {

    return user != null ? User(uid: user.uid) : null;

  }

  //auth change user Streams

  Stream<User> get user {
    return _auth.onAuthStateChanged
    //.map((FirebaseUser user) => _userfromFirebaseUser(user));
    .map(_userfromFirebaseUser);
  }

    // sign in anonymously
    Future signinAnonymous() async 
    {
        try{
        AuthResult result = await _auth.signInAnonymously();
        FirebaseUser user = result.user;
        return _userfromFirebaseUser(user);

        } catch(e){
          print(e.toString());
          return null;
        }
    }

    // sign in with email and password


    // register with email and password


    // sign out 
    Future signOut() async {
      try {
        return await _auth.signOut();
      } catch (e) {
        print(e.toString());
        return null;
      }
    }
}