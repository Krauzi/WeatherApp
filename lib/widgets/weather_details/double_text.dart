import 'dart:ffi';

import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  final String fieldName;
  final String value;
  final int flex;
  final double fontSizeMain;
  final double fontSizeSecondary;
  final FontWeight fontWeight;

  DoubleText(this.fieldName, this.value, this.flex, this.fontSizeMain, this.fontSizeSecondary, this.fontWeight);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Column(
        children: <Widget>[
          Text(fieldName, style: TextStyle(
              fontSize: fontSizeMain,
              fontWeight: fontWeight,
              fontFamily: 'Roboto',
              shadows: [
                Shadow(
                  blurRadius: 7.0,
                  color: Colors.grey[900],
                  offset: Offset(0.3, 0.3),
                ),
              ],
              color: Color.fromRGBO(242, 175, 41, 1)
          )),
          Text(value, style: TextStyle(
              fontSize: fontSizeSecondary,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
              shadows: [
                Shadow(
                  blurRadius: 7.0,
                  color: Colors.grey[900],
                  offset: Offset(0.3, 0.3),
                ),
              ],
              color: Colors.grey[200]
          ))
        ],
      ),
    );
  }
}