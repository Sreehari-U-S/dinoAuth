import 'package:dinoauth/home.dart';
import 'package:dinoauth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Dino extends StatefulWidget {
  @override
  _DinoState createState() => _DinoState();
}

class _DinoState extends State<Dino> {
  bool _initialized = false;
  bool _error = false;
  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      _error = true;
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      return Scaffold(
        body: Center(
            child: SpinKitCubeGrid(
          color: Colors.yellow,
        )),
      );
    }
    if (FirebaseAuth.instance.currentUser != null)
      return Home(Email: FirebaseAuth.instance.currentUser.email);
    return Login();
  }
}

void main() {
  runApp(MaterialApp(
    home: Dino(),
  ));
}
