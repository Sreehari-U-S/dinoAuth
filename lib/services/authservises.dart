import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static checkAuth() {
    if (auth.currentUser == null) return false;
    return false;
  }

  static createUserwithEmailandPassword(String email, String password) {
    try {} catch (e) {}
  }
}
