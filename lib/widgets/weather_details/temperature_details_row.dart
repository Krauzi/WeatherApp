import 'package:flutter/material.dart';

class TemperatureDetailsRow extends StatelessWidget {
  final String icon;
  final double fontSize;
  final String temperature;
  final String temperatureMin;
  final String temperatureMax;

  TemperatureDetailsRow({this.icon, this.fontSize, this.temperature, this.temperatureMin, this.temperatureMax});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset('assets/weather_icons/$icon.png'),
        Text('$temperature\u00b0C', style: TextStyle(
          fontFamily: 'Roboto', fontSize: fontSize, color: Colors.grey[200],
          shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.grey[900],
              offset: Offset(0.3, 0.3),
            ),
          ],
        )),
        Column(
          children: <Widget>[
            Text('max: $temperatureMax\u00b0C', style: TextStyle(
                fontFamily: 'Roboto', fontSize: fontSize * 0.34, color: Colors.grey[200],
                shadows: [
                  Shadow(
                    blurRadius: 7.0,
                    color: Colors.grey[900],
                    offset: Offset(0.3, 0.3),
                  ),
                ],
            )),
            Text('min: $temperatureMin\u00b0C', style: TextStyle(
                fontFamily: 'Roboto', fontSize: fontSize * 0.34, color: Colors.grey[200],
                shadows: [
                  Shadow(
                    blurRadius: 7.0,
                    color: Colors.grey[900],
                    offset: Offset(0.3, 0.3),
                  ),
                ],
            ))
          ],
        )
      ],
    );
  }
}
