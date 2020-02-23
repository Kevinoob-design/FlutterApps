import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CustomCard.dart';
import 'IconCardComponent.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? KBactiveCardColor
                        : KBinactiveCardColor,
                    cardChild: IconCardComponent(
                      icon: Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      label: Text(
                        "MALE",
                        style: labelTextStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? KBactiveCardColor
                        : KBinactiveCardColor,
                    cardChild: IconCardComponent(
                      icon: Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                      ),
                      label: Text(
                        "FEMALE",
                        style: labelTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    color: KBactiveCardColor,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: labelTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    color: KBactiveCardColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: KBactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: KBbottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: KBbottomContainerHeigh,
          )
        ],
      ),
    );
  }
}
