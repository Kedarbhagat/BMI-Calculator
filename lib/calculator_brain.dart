import 'dart:math';

import 'main.dart';
class CalculatorBrain{
  CalculatorBrain({ required this.height , required this.weight}) ;
  final  int height ;
  final int weight ;
 String test  = "this is" ;
  double _bmi = 0 ;
  String CalculateBMI()
  {
    double _bmi =   weight/pow(height/100, 2) ;
    return _bmi.toStringAsFixed(1) ;
  }
  String GetResults()
  {
    if(_bmi<=18.5)
      {
        return "underweight" ;
      }
    else if(_bmi>=18.5 && _bmi<25) {
      return "Normal";
    }
    else
      {
        return "OverWeight" ;
      }

  }
  String Interpretation()
  {
    if(_bmi>=25)
    {
      return "You have a higher than normal body weight .Try to exercise more" ;
    }
    else if(_bmi>=18.5) {
      return "You have a normal body weight. Good job!";
    }
    else
    {
      return "You have a lower than normal body weight. You can eat a bit more" ;
    }

  }
}