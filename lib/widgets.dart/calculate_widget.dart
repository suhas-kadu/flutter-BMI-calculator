import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/views/results_screen.dart';
import 'package:flutter/material.dart';


class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    Key key,
    @required int age,
    @required double value,
    @required int weight,
    @required String selectedGender,
    @required this.whiteColor,
   
  }) : _age = age, _value = value, _weight = weight, _selectedGender = selectedGender, super(key: key);

  final int _age;
  final double _value;
  final int _weight;
  final String _selectedGender;
  final Color whiteColor;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context, ) => ResultsScreen(age: _age, height: _value, weight: _weight, gender: _selectedGender,)));
    },
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: darkThemeColor4,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width,
        child: Text(
          "Calculate".toUpperCase(),
          style: TextStyle(
              color: whiteColor,
              fontSize: 36,
              fontWeight: FontWeight.normal),
        )
        ),
        
        );
  }
}