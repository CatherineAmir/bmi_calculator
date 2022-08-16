import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? gestureOnTap;
  ResuableCard({required this.colour, this.cardChild, this.gestureOnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureOnTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
