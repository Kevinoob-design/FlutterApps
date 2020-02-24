import 'package:flutter/material.dart';

class IconCardComponent extends StatelessWidget {
  IconCardComponent({this.icon, this.label});
  final Icon icon;
  final Text label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 15.0,
        ),
        label,
      ],
    );
  }
}