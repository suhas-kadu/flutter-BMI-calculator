import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderIcon extends StatelessWidget {
  const GenderIcon({
    Key key,
    @required this.iconColor,
    @required this.genderIcon,
    @required this.gender,
  }) : super(key: key);

  final Color iconColor;
  final IconData genderIcon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      padding: EdgeInsets.all(16),
      color: darkThemeColor3,
      child: Column(
        children: [
          FaIcon(
            genderIcon,
            color: iconColor,
            size: MediaQuery.of(context).size.width / 4,
          ),
          Text(
            gender,
            style: TextStyle(color: iconColor, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
