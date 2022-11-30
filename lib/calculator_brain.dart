// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double bmi = 0;

  CalculatorBrain(
    this.weight,
    this.height,
    // this.bmi,
  );

  String calculateBMI() {
    double bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    double bmi = (weight / pow(height / 100, 2));
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double bmi = (weight / pow(height / 100, 2));
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
