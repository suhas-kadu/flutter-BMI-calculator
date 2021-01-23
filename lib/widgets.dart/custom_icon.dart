import 'package:flutter/material.dart';


class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key key,
    @required this.whiteColor,
    @required this.icon,
  }) : super(key: key);

  final Color whiteColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Color(0xFF0f3460),
            borderRadius: BorderRadius.circular(50)),
        child: Icon(
          icon,
          color: whiteColor,
          size: MediaQuery.of(context).size.width / 8,
        ));
  }
}

