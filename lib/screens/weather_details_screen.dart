import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/model/weather_api_response.dart';
import 'package:weatherapp/widgets/weather_details/animated_wave.dart';
import 'package:weatherapp/widgets/weather_details/details_row.dart';
import 'package:weatherapp/widgets/weather_details/temperature_details_row.dart';
import 'package:weatherapp/widgets/weather_details/double_text.dart';
import 'package:weatherapp/widgets/weather_details/single_text.dart';

class WeatherDetailsScreen extends StatelessWidget {
  final WeatherApiResponse weatherResponse;
  final List<Color> colorList;

  WeatherDetailsScreen({this.weatherResponse, this.colorList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(child: Container (
            decoration: BoxDecoration(
              color: colorList[0]
            ),
          )),
        onBottom(AnimatedWave(height: 180, speed: 1.0)),
        onBottom(AnimatedWave(height: 120, speed: 0.9, offset: pi)),
        onBottom(AnimatedWave(height: 220, speed: 1.2, offset: pi / 2)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: colorList[1]
                ),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 43),
                      DoubleText(weatherResponse.name, weatherResponse.formattedDayTime, 0, 40.0, 22.0, FontWeight.w400, Color.fromRGBO(242, 175, 41, 1)),
                      SizedBox(height: 8),
                      Container(
                        child: TemperatureDetailsRow(
                            icon: weatherResponse.weather[0].icon,
                            fontSize: 48.0,
                            temperature: weatherResponse.main.temp.toStringAsFixed(1),
                            temperatureMax: (weatherResponse.main.tempMax).toStringAsFixed(1),
                            temperatureMin: (weatherResponse.main.tempMin).toStringAsFixed(1)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 24, bottom: 24),
                decoration: BoxDecoration(
                    color: colorList[2]
                ),
                child: SingleText(toBeginningOfSentenceCase(weatherResponse.weather[0].description),
                    28.0, FontWeight.w400),
              ),
              SizedBox(height: 12),
              DetailsRow(
                  20.0, 24.0,
                  "Wschód słońca", weatherResponse.sun.formattedSunrise(weatherResponse.timezone),
                  "Zachód słońca", weatherResponse.sun.formattedSunset(weatherResponse.timezone),
                  Color.fromRGBO(242, 175, 41, 1)
              ),
              SizedBox(height: 26),
              DetailsRow(
                  20.0, 24.0,
                  "Wilgotność", '${weatherResponse.main.humidity}%',
                  "Ciśnienie", '${weatherResponse.main.pressure}',
                  Color.fromRGBO(242, 175, 41, 1)
              ),
            ],
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