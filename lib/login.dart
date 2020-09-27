import 'package:dinoauth/home.dart';
import 'package:dinoauth/services/authservises.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), border: Border.all()),
              child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  hintText: "E-mail:",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: emailcontroller,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), border: Border.all()),
              child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  hintText: "Password:",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: passwordcontroller,
              ),
            ),
            Row(
              children: [
                FlatButton(
                  onPressed: () async {
                    await AuthServices.createUserwithEmailandPassword(
                        email: emailcontroller.text,
                        password: passwordcontroller.text);
                    if (FirebaseAuth.instance.currentUser != null)
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(
                                    Email:
                                        FirebaseAuth.instance.currentUser.email,
                                  )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(1),
                    width: (MediaQuery.of(context).size.width) * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.orange[300]),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: null,
                  child: Container(
                    margin: EdgeInsets.all(1),
                    width: (MediaQuery.of(context).size.width) * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(4)),
                    child: Text("LogIn",
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.orange[300])),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
