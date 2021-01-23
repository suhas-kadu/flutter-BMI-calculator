import 'package:bmi_calculator/widgets.dart/calculate_widget.dart';
import 'package:bmi_calculator/widgets.dart/custom_icon.dart';
import 'package:bmi_calculator/widgets.dart/gender_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedGender = "Male";

  int _weight = 0;
  int _age = 0;
  double _value = 0.0;

  void _onChanged(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1a2e),
      appBar: AppBar(
        title: Text("BMI CALCUATOR"),
        backgroundColor: Color(0xFF1a1a2e),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    maleColor = whiteColor;
                    femaleColor = offwhiteColor;
                    _selectedGender = "Male";
                  });
                },
                child: GenderIcon(
                  iconColor: maleColor,
                  genderIcon: FontAwesomeIcons.mars,
                ),
              ),
              SizedBox(width: 5),
              InkWell(
                  onTap: () {
                    setState(() {
                      femaleColor = whiteColor;
                      maleColor = offwhiteColor;
                      _selectedGender = "Female";
                    });
                  },
                  child: GenderIcon(
                      iconColor: femaleColor,
                      genderIcon: FontAwesomeIcons.venus)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //Height widget
          Container(
            margin: EdgeInsets.symmetric(horizontal: 34),
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF16213e),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  _value.toInt().toString() + "cm",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slider(
                    //divisions: 5,
                    min: 0.0,
                    max: 200,
                    value: _value, onChanged: _onChanged,

                    inactiveColor: Colors.red,
                    activeColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  //margin: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  color: Color(0xFF16213e),
                  child: Column(
                    children: [
                      Text(
                        "WEIGHT",
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        _weight.toString(),
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 36,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _weight = _weight + 1;
                                });
                              },
                              child: CustomIcon(
                                  whiteColor: whiteColor, icon: Icons.add)),
                          SizedBox(width: 10),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _weight = _weight - 1;
                                });
                              },
                              child: CustomIcon(
                                  whiteColor: whiteColor, icon: Icons.remove)),
                        ],
                      )
                    ],
                  )),
              SizedBox(width: 10),
              Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  color: Color(0xFF16213e),
                  child: Column(
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        _age.toString(),
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 36,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _age = _age + 1;
                              });
                            },
                            child: CustomIcon(
                              whiteColor: whiteColor,
                              icon: Icons.add,
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _age = _age - 1;
                                });
                              },
                              child: CustomIcon(
                                  whiteColor: whiteColor, icon: Icons.remove)),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CalculateWidget(
            age: _age,
            value: _value,
            weight: _weight,
            selectedGender: _selectedGender,
            whiteColor: whiteColor,
          )
        ],
      ),
    );
  }
}

