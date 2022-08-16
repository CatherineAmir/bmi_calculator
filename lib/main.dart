import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

import 'screens/inputpage.dart';
import 'screens/result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),

        canvasColor: Colors.red,
        splashColor: Colors.yellow,

        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: 'Hind',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: InputPage(), can;t be used with initial Route
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result_page': (context) => ResultPage(
              bmi_indicator: 'string',
              bmi_interpritaion: 'string',
              bmi_result: 'string',
            ),
      },
    );
  }
}
