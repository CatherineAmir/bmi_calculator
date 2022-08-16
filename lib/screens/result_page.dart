import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/reusablecard.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi_indicator,
      required this.bmi_interpritaion,
      required this.bmi_result});
  final String bmi_result;
  final String bmi_indicator;
  final String bmi_interpritaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calulator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'YOUR RESULT',
                style: kInfoTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmi_result,
                    style: kLargeButtonTextStyle.copyWith(color: Colors.green),
                  ),
                  Text(
                    bmi_indicator,
                    style: kInfoTextStyle.copyWith(fontSize: 100),
                  ),
                  Text(
                    bmi_interpritaion,
                    style: kLableTextStyle.copyWith(color: Colors.white),
                    textAlign: Tgit remote add origin https://github.com/CatherineAmir/flutter_bmi.git
                  git branch -M main
                  git push -u origin maingit remote add origin https://github.com/CatherineAmir/flutter_bmi.git
                  git branch -M main
                  git push -u origin mainextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            ontap: () {
              Navigator.pushNamed(context, '/');
            },
            buttonText: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
