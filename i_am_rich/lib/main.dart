import 'package:flutter/material.dart';

//Main function pana, like C++ klk
void main() => runApp(MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("klk"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image.network(
            "http://pngimg.com/uploads/diamond/diamond_PNG6702.png"),
      ),
    )));
