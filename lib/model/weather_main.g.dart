// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherMain _$WeatherMainFromJson(Map<String, dynamic> json) {
  return WeatherMain(
    temp: (json['temp'] as num)?.toDouble(),
    tempMin: (json['temp_min'] as num)?.toDouble(),
    tempMax: (json['temp_max'] as num)?.toDouble(),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
  );
}

Map<String, dynamic> _$WeatherMainToJson(WeatherMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
