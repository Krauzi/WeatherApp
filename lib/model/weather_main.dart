import 'package:json_annotation/json_annotation.dart';

part 'weather_main.g.dart';

@JsonSerializable()
class WeatherMain {
  @JsonKey(name: 'temp')
  double temp;
  @JsonKey(name: 'temp_min')
  double tempMin;
  @JsonKey(name: 'temp_max')
  double tempMax;
  @JsonKey(name: 'pressure')
  int pressure;
  @JsonKey(name: 'humidity')
  int humidity;

  WeatherMain(
      {this.temp, this.tempMin, this.tempMax, this.pressure, this.humidity});

  factory WeatherMain.fromJson(Map<String, dynamic> json) => _$WeatherMainFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherMainToJson(this);
}