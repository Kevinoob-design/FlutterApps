import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.buttonLabel, @required this.onTap});

  final String buttonLabel;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonLabel,
            style: KLargeButtontextStyle,
          ),
        ),
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: KBottomContainerHeigh,
      ),
    );
  }
}