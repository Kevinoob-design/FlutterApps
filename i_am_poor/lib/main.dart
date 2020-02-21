import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("i am so fucking poor"),
        ),
        body: Center(
          child: Image.network("https://www.udemy.com/staticx/udemy/images/v6/logo-coral-light.svg"),
        ),
        backgroundColor: Colors.blue,
      ),
    ));
