import 'dart:math';

class BrainCalculator {
  BrainCalculator({required this.weight, required this.height});
  final int weight;
  final int height;
  double _bmi = 18;

  String calclate_bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'YOU HAVE HIGHER THAN A NORMAL WEIGHT TRY TO EXCERSIE MORE';
    } else if (_bmi >= 18.5) {
      return 'YOU HAVE A NORMAL BODY WEIGHT GOOD JOB';
    } else {
      return 'YOU HAVE A LOWER THAN NORMAL BODY WEIGHT, YOU CAN EAT A BIT MORE';
    }
  }
}
