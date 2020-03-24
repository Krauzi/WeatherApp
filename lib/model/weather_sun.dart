import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_sun.g.dart';

@JsonSerializable()
class WeatherSun {
  @JsonKey(name: 'sunrise')
  int sunrise;
  @JsonKey(name: 'sunset')
  int sunset;

  WeatherSun({this.sunrise, this.sunset});

  factory WeatherSun.fromJson(Map<String, dynamic> json) => _$WeatherSunFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherSunToJson(this);

  String formattedSunrise(int timezone) => DateFormat('HH:mm')
      .format(DateTime.fromMillisecondsSinceEpoch((sunrise + timezone) * 1000).toUtc());
  String formattedSunset(int timezone) => DateFormat('HH:mm')
      .format(DateTime.fromMillisecondsSinceEpoch((sunset + timezone) * 1000).toUtc());
}