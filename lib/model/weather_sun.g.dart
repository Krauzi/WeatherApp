// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_sun.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherSun _$WeatherSunFromJson(Map<String, dynamic> json) {
  return WeatherSun(
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
  );
}

Map<String, dynamic> _$WeatherSunToJson(WeatherSun instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
