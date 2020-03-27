import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/weather_details/double_text.dart';

class DetailsRow extends StatelessWidget {
  final double fontSizeMain;
  final double fontSizeSecondary;
  final String firstField;
  final String firstValue;
  final String secondField;
  final String secondValue;
  final Color fontColor;

  DetailsRow(this.fontSizeMain, this.fontSizeSecondary, this.firstField, this.firstValue, this.secondField, this.secondValue, this.fontColor);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        DoubleText(firstField, firstValue, 0, fontSizeMain, fontSizeSecondary, FontWeight.w400, fontColor),
        DoubleText(secondField, secondValue, 0, fontSizeMain, fontSizeSecondary, FontWeight.w400, fontColor),
      ],
    );
  }
}
