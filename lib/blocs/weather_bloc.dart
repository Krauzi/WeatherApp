import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weatherapp/model/weather_api_response.dart';
import 'package:weatherapp/repositories/weather_repository.dart';

class WeatherBloc extends BlocBase {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository);

  // "liveData" with weather response
  BehaviorSubject<WeatherApiResponse> _weatherSubject = BehaviorSubject();
  Stream<WeatherApiResponse> get weatherObservable => _weatherSubject.stream;

  // "liveData" with weather loading
  BehaviorSubject<bool> _loadingWeatherSubject = BehaviorSubject();
  Stream<bool> get loadingWeatherObservable => _loadingWeatherSubject.stream;

  Future getWeatherForCity(String city) async {
    _loadingWeatherSubject.add(true);
    _weatherRepository.getWeather(city)
        .then(_onWeatherSuccess)
        .catchError(_onWeatherError);
  }

  Future _onWeatherSuccess(WeatherApiResponse weather) async {
    _loadingWeatherSubject.add(false);
    _weatherSubject.add(weather);
  }

  Future _onWeatherError(e) async {
    _loadingWeatherSubject.add(false);
    _weatherSubject.addError(e);
  }

  @override
  void dispose() {
    super.dispose();
    _weatherSubject.close();
    _loadingWeatherSubject.close();
  }
}