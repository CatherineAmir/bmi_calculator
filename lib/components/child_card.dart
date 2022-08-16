import 'package:flutter/material.dart';

import '../constants.dart';

class ChildCard extends StatelessWidget {
  ChildCard({this.cardIcon, required this.cardText});

  final IconData? cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 70,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
