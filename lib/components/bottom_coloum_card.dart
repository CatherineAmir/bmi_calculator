import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/rounded_button.dart';

class BottomColoumn extends StatelessWidget {
  BottomColoumn(
      {required this.cardText,
      required this.property,
      required this.Onpressed1,
      required this.Onpressed2});
  final String cardText;
  int property;
  final VoidCallback Onpressed1;
  final VoidCallback Onpressed2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(cardText, style: kLableTextStyle),
        Text(property.toString(), style: kInfoTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              buttonIcon: FontAwesomeIcons.minus,
              onPressed: Onpressed1,
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              buttonIcon: FontAwesomeIcons.plus,
              onPressed: Onpressed2,
            ),
          ],
        )
      ],
    );
  }
}
