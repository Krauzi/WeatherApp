import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/weather_details/animated_wave.dart';
import 'package:weatherapp/widgets/weather_details/details_row.dart';
import 'package:weatherapp/widgets/weather_details/temperature_details_row.dart';
import 'package:weatherapp/widgets/weather_details/double_text.dart';
import 'package:weatherapp/widgets/weather_details/gradient_background.dart';
import 'package:weatherapp/widgets/weather_details/single_text.dart';

class WeatherDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(child: GradientBackground()),
        onBottom(AnimatedWave(height: 180, speed: 1.0)),
        onBottom(AnimatedWave(height: 120, speed: 0.9, offset: pi)),
        onBottom(AnimatedWave(height: 220, speed: 1.2, offset: pi / 2)),
          _navigateBack(context),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.2)
                      //color: Color.fromRGBO(230, 230, 230, 0.1)
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50),
                      DoubleText("Gliwice", "12:41, 9 marzec 2020", 0, 48.0, 26.0, FontWeight.w400),
                      SizedBox(height: 24),
                      TemperatureDetailsRow(icon: '02d', fontSize: 48.0, temperature: 25, temperatureMax: 26, temperatureMin: 24),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                SingleText("Całkowite zachmurzenie", 28.0, FontWeight.w400),
                SizedBox(height: 48),
                DetailsRow(20.0, 16.0, "Wschód słońca", "06:00", "Zachód słońca", "17:30"),
                SizedBox(height: 26),
                DetailsRow(20.0, 16.0, "Wilgotność", "68%", "Ciśnienie", "1024"),
              ],
            ),
          )
        ]
      ),
    );
  }

  onBottom(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );

  Widget _navigateBack(context) => Positioned (
    top: 8, left: 8,
    child: SafeArea(
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: Navigator.of(context).pop,
        ),
      ),
    ),
  );
}