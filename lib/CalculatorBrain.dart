import 'dart:math';

import 'package:bmi/Input.dart';

import 'main.dart';

class calculatorBrain{
  final int height;
  final int weight;

  calculatorBrain(this.height, this.weight);

  double _bmi;
  
  String bmiCalculator(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi>=18){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have higher than normal body weight, try to excercise regularly!';
    }
    else if(_bmi>=18){
      return 'You have normal body weight, Good Job!';
    }
    else{
      return 'You have lower than normal body weight, try to eat bit more!';
    }
  }
}