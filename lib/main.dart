import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(EightBall());

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;

  void randomiseNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey.shade900,
          appBar: AppBar(
            title: Text('The ball of truth'),
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    randomiseNumber();
                  },
                  child: Image.asset('images/ball$ballNumber.png'),
                ),
              )
            ],
          )),
    );
  }
}
