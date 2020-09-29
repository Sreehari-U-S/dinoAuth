import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String Email;

  const Home({Key key, this.Email}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DinoAuth",
              style: TextStyle(fontSize: 24, color: Colors.orange),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "E-mail:",
                        style: TextStyle(color: Colors.deepOrangeAccent[400]),
                      ),
                      Text(
                        widget.Email,
                        style: TextStyle(color: Colors.deepOrange[300]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
