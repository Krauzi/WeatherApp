import 'package:flutter/material.dart';

class SingleText extends StatelessWidget {
  final String value;
  final double fontSize;
  final FontWeight fontWeight;

  SingleText(this.value, this.fontSize, this.fontWeight);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: fontSize, fontFamily: 'Roboto', fontWeight: fontWeight,
          shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.grey[900],
              offset: Offset(0.3, 0.3),
            ),
          ],
          color: Colors.grey[200]
      ),
    );
  }
}