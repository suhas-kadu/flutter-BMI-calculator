import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  final int weight;
  final double height;
  final String gender;
  final int age;

  // Constructor
  ResultsScreen({this.height, this.age, this.gender, this.weight});

  String result;
  String range;
  String message;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // converting height to metres
    double newHeight = height / 100;

    // calculating the bmi
    double bmi = weight / (newHeight * newHeight);

    //print("Weight: $weight\nAge: $age\nHeight: ${height}\nGender:$gender\nBMI: $bmi");

    // function to assgin the class and display message based 
    void getResult() {
      if (bmi < 18.5) {
        result = "UnderWeight";
        range = "0 - 18.5 kg/m2";
        message = "You are Low body Weight.Eat healthy food and Exercise";
      } else if (bmi >= 18.5 && bmi <= 24.9) {
        result = "Normal";
        range = "18.5 - 24.9 kg/m2";
        message = "You have Normal body weight.Good Job!";
      } else if (bmi >= 25 && bmi <= 29.9) {
        result = "Overweight";
        range = "25 - 29.9 kg/m2";
        message = "You have high body weight.Do some Exercise and become Fit";
      } else if (bmi > 30) {
        result = "Obese";
        range = "> 30 kg/m2";
        message =
            "You have very high body weight.Go on a Diet and Exercise daily";
      } else {
        result = "Invalid data.Try again";
      }
    }

    // Calling the getResult() function
    getResult();
    //print("\n$result");

    return Scaffold(
      backgroundColor: darkThemeColor1,
      appBar: AppBar(
        backgroundColor:darkThemeColor1,
        elevation: 0.0,
        title: Text("BMI CALCULATOR", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    "Your Result",
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 36),
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              width: width,
              color:darkThemeColor2,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    result.toUpperCase(),
                    style: TextStyle(
                      color: darkThemeColor5,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      //fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "$result BMI range:",
                    style: TextStyle(
                        color: darkThemeColor4,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(range,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      message,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // SizedBox(
                  //   height: 50,
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
