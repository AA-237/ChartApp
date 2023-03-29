import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum AuthStatus {
  NotAuthenticated,
  Authenticating,
  Authenticated,
  UserNotFound,
  Error,
}

class AuthProvider extends ChangeNotifier {
  late FirebaseAuth _auth;

  late AuthStatus status;

  static AuthProvider instance = AuthProvider();

  AuthProvider() {
    _auth = FirebaseAuth.instance;
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    status =AuthStatus.Authenticating;
    notifyListeners();
    try {
      final UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      status = AuthStatus.Authenticated;
      print('Looged in successfully');
    } catch (e) {}
  }
}
