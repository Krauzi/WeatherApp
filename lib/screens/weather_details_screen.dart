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
                SizedBox(height: 66),
                DoubleText("Gliwice", "12:41, 9 marzec 2020", 0, 54.0, 36.0, FontWeight.w800),
                SizedBox(height: 48),
                TemperatureDetailsRow(icon: '02d', fontSize: 48.0, temperature: 25, temperatureMax: 26, temperatureMin: 24),
                SizedBox(height: 28),
                SingleText("Całkowite zachmurzenie", 32.0, FontWeight.w400),
                SizedBox(height: 48),
                DetailsRow(22.0, 18.0, "Wschód słońca", "06:00", "Zachód słońca", "17:30"),
                SizedBox(height: 26),
                DetailsRow(22.0, 18.0, "Wilgotność", "68%", "Ciśnienie", "1024"),
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


//
//  Widget _container(context) => Stack(
//    children: <Widget>[
//      Container(
//        width: double.infinity,
//        height: MediaQuery.of(context).size.longestSide * 0.3,
//        alignment: Alignment.center,
//        decoration: BoxDecoration(
//            color: color[300],
//        ),
//        child: Column(
//          children: <Widget>[
//            Container(
//              alignment: Alignment.center,
//              width: 200.0,
//              child: Image.asset('assets/weather_icons/01d.png'),
//            ),
//            Container(
//              alignment: Alignment.center,
//              height: 80.0,
//              child: Text(
//                'Gliwice',
//                maxLines: 1,
//                overflow: TextOverflow.ellipsis,
//                style: TextStyle(
//                    color: color[900],
//                    fontSize: 24.0,
//                    fontWeight: FontWeight.w500
//                ),
//              ),
//            )
//          ],
//        ),
//      )
//    ],
//  );
