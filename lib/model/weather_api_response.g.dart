// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResponse _$WeatherApiResponseFromJson(Map<String, dynamic> json) {
  return WeatherApiResponse(
    weather: (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    main: json['main'] == null
        ? null
        : WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
    dt: json['dt'] as int,
    sun: json['sys'] == null
        ? null
        : WeatherSun.fromJson(json['sys'] as Map<String, dynamic>),
    name: json['name'] as String,
    timezone: json['timezone'] as int,
  );
}

Map<String, dynamic> _$WeatherApiResponseToJson(WeatherApiResponse instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'dt': instance.dt,
      'sys': instance.sun,
      'name': instance.name,
      'timezone': instance.timezone
    };
