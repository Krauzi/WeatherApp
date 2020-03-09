import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:weatherapp/repositories/weather_repository.dart';

class WeatherBloc extends BlocBase {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository);
}