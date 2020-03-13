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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 6),
          decoration: new BoxDecoration(
            color: Colors.pink[700],
            shape: BoxShape.circle,
          ),
          child: Image.asset('assets/weather_icons/$icon.png'),
        ),
        Container(
          padding: const EdgeInsets.only(top: 16),
          child: Text('$temperature\u00b0C', style: TextStyle(
            fontFamily: 'Roboto', fontSize: fontSize, color: Colors.grey[200],
            shadows: [Shadow(blurRadius: 7.0, color: Colors.grey[900], offset: Offset(0.3, 0.3),),],
          )),
        ),
        Container(
          padding: const EdgeInsets.only(top: 26),
          child: Column(
            children: <Widget>[
              Text('max: $temperatureMax\u00b0C', style: TextStyle(
                  fontFamily: 'Roboto', fontSize: fontSize * 0.36, color: Colors.grey[200],
                  shadows: [Shadow(blurRadius: 7.0, color: Colors.grey[900], offset: Offset(0.3, 0.3),),],
              )),
              Text('min: $temperatureMin\u00b0C', style: TextStyle(
                  fontFamily: 'Roboto', fontSize: fontSize * 0.36, color: Colors.grey[200],
                  shadows: [Shadow(blurRadius: 7.0, color: Colors.grey[900], offset: Offset(0.3, 0.3),),],
              ))
            ],
          ),
        )
      ],
    );
  }
}
