import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets.dart/calculate_widget.dart';

class ResultsScreen extends StatelessWidget {

  final int weight;
  final double height;
  final String gender;
  final int age;

  ResultsScreen({this.height,this.age, this.gender, this.weight});

  

  @override
  Widget build(BuildContext context) {
    int heightinCM = height.toInt();
    heightinCM = heightinCM~/100.toInt();
    double result = weight/(heightinCM*heightinCM);
  print("Weight: $weight\nAge: $age\nHeight: ${height.toInt()}\nGender:$gender\nBMI: ${result}");
  
    return Container(
      
    );
  }
}
