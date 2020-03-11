import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/model/weather_api_response.dart';
import 'package:weatherapp/widgets/weather_details/animated_wave.dart';
import 'package:weatherapp/widgets/weather_details/details_row.dart';
import 'package:weatherapp/widgets/weather_details/temperature_details_row.dart';
import 'package:weatherapp/widgets/weather_details/double_text.dart';
import 'package:weatherapp/widgets/weather_details/gradient_background.dart';
import 'package:weatherapp/widgets/weather_details/single_text.dart';

class WeatherDetailsScreen extends StatelessWidget {
  final WeatherApiResponse weatherResponse;

  WeatherDetailsScreen({this.weatherResponse});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(child: GradientBackground()),
        onBottom(AnimatedWave(height: 180, speed: 1.0)),
        onBottom(AnimatedWave(height: 120, speed: 0.9, offset: pi)),
        onBottom(AnimatedWave(height: 220, speed: 1.2, offset: pi / 2)),
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
                      DoubleText(weatherResponse.name, weatherResponse.formattedDayTime, 0, 48.0, 26.0, FontWeight.w400),
                      SizedBox(height: 24),
                      TemperatureDetailsRow(
                          icon: weatherResponse.weather[0].icon,
                          fontSize: 48.0,
                          temperature: weatherResponse.main.temp.toStringAsFixed(1),
                          temperatureMax: (weatherResponse.main.tempMax).toStringAsFixed(1),
                          temperatureMin: (weatherResponse.main.tempMin).toStringAsFixed(1)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                SingleText(toBeginningOfSentenceCase(weatherResponse.weather[0].description),
                    28.0, FontWeight.w400),
                SizedBox(height: 48),
                DetailsRow(
                    20.0, 16.0,
                    "Wschód słońca", weatherResponse.sun.formattedSunrise,
                    "Zachód słońca", weatherResponse.sun.formattedSunset
                ),
                SizedBox(height: 26),
                DetailsRow(
                    20.0, 16.0,
                    "Wilgotność", '${weatherResponse.main.humidity}%',
                    "Ciśnienie", '${weatherResponse.main.pressure}'
                ),
              ],
            ),
          ),
          _navigateBack(context),
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