import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0XFF1D1E33);
const inactiveCardColour = Color(0XFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

//  Color maleCardColour = inactiveCardColour;
//  Color femaleCardColour = inactiveCardColour;

//  void updateColour(Gender selectedGender) {
//    if (selectedGender == Gender.male) {
//      if (maleCardColour == inactiveCardColour) {
//        maleCardColour = activeCardColour;
//        femaleCardColour = inactiveCardColour;
//      } else {
//        maleCardColour = inactiveCardColour;
//      }
//    }
//
//    if (selectedGender == Gender.femalemale) {
//      if (femaleCardColour == inactiveCardColour) {
//        femaleCardColour = activeCardColour;
//        maleCardColour = inactiveCardColour;
//      } else {
//        femaleCardColour = inactiveCardColour;
//      }
//    }
//  }

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
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      print('Male card was pressed');
                      //updateColour(Gender.male);
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? activeCardColour
                      : inactiveCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      print('Female card was pressed');
                      //updateColour(Gender.female);
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? activeCardColour
                      : inactiveCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: activeCardColour,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                )),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        )); //Scaffold
  }
}
