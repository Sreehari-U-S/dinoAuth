import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  hintText: "E-mail:",
                  hintStyle: TextStyle(color: Colors.grey),
                )),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  hintText: "Password:",
                  hintStyle: TextStyle(color: Colors.grey),
                )),
          ),
          Row(
            children: [
              FlatButton(
                  onPressed: null,
                  child: Container(
                    margin: EdgeInsets.all(1),
                    width: (MediaQuery.of(context).size.width) * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.orange[300]),
                    ),
                  )),
              FlatButton(
                  onPressed: null,
                  child: Container(
                    margin: EdgeInsets.all(1),
                    width: (MediaQuery.of(context).size.width) * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(4)),
                    child: Text("SignUp",
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.orange[300])),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
