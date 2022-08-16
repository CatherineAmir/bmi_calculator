import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.onPressed, required this.buttonIcon});

  final VoidCallback onPressed;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5C),
      shape: CircleBorder(),
      child: Icon(
        buttonIcon,
      ),
    );
  }
}
