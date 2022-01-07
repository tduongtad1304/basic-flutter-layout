// ignore_for_file: prefer_initializing_formals, must_be_immutable

import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  dynamic title;
  Color? boxcolor;
  Color? textColor;

  TabMenu(dynamic title, Color boxcolor, Color textColor, {Key? key})
      : super(key: key) {
    this.title = title;
    this.boxcolor = boxcolor;
    this.textColor = textColor;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 22.5,
              letterSpacing: 1.3,
            ),
          ),
        ),
        color: boxcolor,
      ),
    );
  }
}
