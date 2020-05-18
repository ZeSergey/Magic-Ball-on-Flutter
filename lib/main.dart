import 'package:flutter/material.dart';
import 'Dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int ball = Random().nextInt(5) + 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ask Me Anything",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Center(
          child: FlatButton(
              child: Image.asset('images/ball$ball.png'),
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1;
                });
              }),
        ),
      ),
    );
  }
}
