import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String caluculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getBmi() {
    print(_bmi);

    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getBmiInterpretation() {
    if (_bmi >= 25) {
      return 'You are overweight and you need to reduce your food';
    } else if (_bmi >= 18.5) {
      return 'Your body is Normal. Good job';
    } else {
      return 'Oh boy, you need to eat more';
    }
  }
}
