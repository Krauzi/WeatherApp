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
}