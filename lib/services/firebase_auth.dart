import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<ResultAuth> signIn(String email, String password) async {
    String err = "Error";
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return ResultAuth(user: user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return ResultAuth(message: e.code);
    } catch (e) {
      print("Erorr :"+e);
      // print(err);
      return ResultAuth(message: e.toString());
    }
  }

  static Future<ResultAuth> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user;
      return ResultAuth(user: user);
    } catch (e) {
      print(e.toString());
      return ResultAuth(message: e.toString());
    }
  }

  static Future<void> signOut() {
    return _auth.signOut();
  }

  static Stream<User> get firebaseUser => _auth.authStateChanges();
}

class ResultAuth {
  final User user;
  final String message;
  ResultAuth({this.user, this.message});
}
