import 'package:flutter/material.dart';
import "dart:math";

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[400],
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              "Ask me anything",
              style: TextStyle(fontSize: 30),
            ),
          ),
          body: AskBall(),
        ),
      ),
    );
  }
}

class AskBall extends StatefulWidget {
  @override
  _AskBallState createState() => _AskBallState();
}

class _AskBallState extends State<AskBall> {
  int imageNumber = Random().nextInt(5) + 1;
  void answereQuestion() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            onPressed: () => {answereQuestion()},
            child: Image.asset("images/ball$imageNumber.png"))
      ],
    );
  }
}
