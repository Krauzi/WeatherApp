import 'package:flutter/cupertino.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weatherapp/model/weather_main.dart';
import 'package:weatherapp/model/weather_sun.dart';
import 'package:weatherapp/model/weather.dart';

part 'weather_api_response.g.dart';

@JsonSerializable()
class WeatherApiResponse {
  @JsonKey(name: 'weather')
  List<Weather> weather;
  @JsonKey(name: 'main')
  WeatherMain main;
  @JsonKey(name: 'dt')
  int dt;
  @JsonKey(name: 'sys')
  WeatherSun sun;
  @JsonKey(name: 'name')
  String name;

  WeatherApiResponse(
      {this.weather, this.main, this.dt, this.sun, this.name});

  factory WeatherApiResponse.fromJson(Map<String, dynamic> json) => _$WeatherApiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherApiResponseToJson(this);

  String get formattedDayTime => DateFormat('H:mm, d.M.yyyy')
      .format(DateTime.fromMillisecondsSinceEpoch(dt * 1000));
}