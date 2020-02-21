import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: PlaySound(),
        ),
      ),
    );
  }
}

class PlaySound extends StatelessWidget {
  List<Expanded> listOfButtons() {
    List<Expanded> flatButtonsList = new List();

    for (var i = 1; i < 8; i++) {
      flatButtonsList.add(new Expanded(
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play("note$i.wav");
          },
          child: SizedBox(),
          color: Colors.blue[i * 100],
        ),
      ));
    }

    return flatButtonsList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: listOfButtons(),
    );
  }
}
