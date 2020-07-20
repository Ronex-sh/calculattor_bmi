import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});
  String CalculateBMI() {
    double _bmi = height / pow(weight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'Overweight not good not good';
    } else if (_bmi > 18.5) {
      return 'normal very good very good';
    } else {
      return 'Underweight kind of good kind of good';
    }
  }
}
