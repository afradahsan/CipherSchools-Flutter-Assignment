import 'package:cipher_schools_expense_tracker/models/user_model.dart';
import 'package:cipher_schools_expense_tracker/views/home/bottom_nav.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthViewModel extends ChangeNotifier{
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin(BuildContext context) async{
    final googleUser = await googleSignIn.signIn();
    if(googleUser==null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    );

    final UserCredential result = await FirebaseAuth.instance.signInWithCredential(credential);

    UserModel firebaseuser = UserModel(id: result.user!.uid, name: result.user!.displayName!, email: result.user!.email!);

    await FirebaseFirestore.instance.collection('users').doc(firebaseuser.id).set(firebaseuser.toMap());
    await saveUserIdToLocal(firebaseuser.id);

    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return BottomNav();
    },));

    notifyListeners();
  }

  Future<void> saveUserIdToLocal(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
  }

  Future<bool> isUserSignedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('userId');
  }
}