import 'package:bmi_calculator/bmi_calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../components/bottom_coloum_card.dart';
import '../components/child_card.dart';
import '../components/reusablecard.dart';
import '../constants.dart';
import 'result_page.dart';

enum GenderEnum { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  GenderEnum? selectedGender;
  int personHeight = 100;
  int personweight = 50;
  int personage = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: selectedGender == GenderEnum.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: ChildCard(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                    gestureOnTap: () {
                      setState(() {
                        selectedGender = GenderEnum.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                      colour: selectedGender == GenderEnum.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ChildCard(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: 'FEMALE',
                      ),
                      gestureOnTap: () {}),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ResuableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: kLableTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(personHeight.toStringAsFixed(0),
                              style: kInfoTextStyle),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Text(
                            'cm',
                            style: kLableTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29EB1555),
                          trackHeight: 1.0,
                          thumbColor: Color(0xFFEB1555),
                          inactiveTrackColor: kInactiveSlider,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.00),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: personHeight.toDouble(),
                          max: 220.0,
                          min: 100.0,
                          // activeColor: Colors.white, over ride the thumb color

                          onChanged: (myheight) {
                            setState(() {
                              personHeight = myheight.toInt();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: kActiveCardColor,
                    cardChild: BottomColoumn(
                      cardText: 'WEIGHT',
                      property: personweight,
                      Onpressed1: () {
                        setState(() {
                          personweight--;
                        });
                      },
                      Onpressed2: () {
                        setState(
                          () {
                            personweight++;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    colour: kActiveCardColor,
                    cardChild: BottomColoumn(
                      cardText: 'AGE',
                      property: personage,
                      Onpressed1: () {
                        setState(() {
                          personage--;
                        });
                      },
                      Onpressed2: () {
                        setState(
                          () {
                            personage++;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            ontap: () {
              BrainCalculator brain = BrainCalculator(
                height: personHeight,
                weight: personweight,
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmi_indicator: brain.calclate_bmi(),
                      bmi_result: brain.getResult(),
                      bmi_interpritaion: brain.getInterpretation(),
                    ),
                  ));
            },
            buttonText: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
