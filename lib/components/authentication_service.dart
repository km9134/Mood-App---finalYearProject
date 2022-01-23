import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:moodful/Screens/SignUp/components/body_signup.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

  ///Signout function
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  ///sign in function
  Future<String?> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  ///sign up function
  Future<String?> signUp(
      {required String email,
      required String password,
      required String firstName,
      required String lastName}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      ///get current user and update USER_TABLE collection on firebase with signup details
      var currentUser = FirebaseAuth.instance.currentUser;
      FirebaseFirestore.instance
          .collection('USER_TABLE')
          .doc(currentUser!.uid)
          .set({
        'email': currentUser.email,
        'userID': currentUser.uid,
        'firstName': firstName,
        'lastName': lastName
      });

      //return "Signed up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> updateDetails(
      {required String firstName, required String lastName}) async {
    try {
      var currentUser = FirebaseAuth.instance.currentUser;
      FirebaseFirestore.instance
          .collection('USER_TABLE')
          .doc(currentUser!.uid)
          .set({'firstName': firstName, 'lastName': lastName},
              SetOptions(merge: true));

      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
