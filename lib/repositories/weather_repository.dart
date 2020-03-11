import 'package:weatherapp/model/apiclient/apiclient.dart';
import 'package:weatherapp/model/weather_api_response.dart';

const String units = 'metric';
final String lang = 'pl';
final String apiKey = 'x';

class WeatherRepository {
  Future<WeatherApiResponse> getWeather(String city) => apiClient.getWeatherForCity(city, lang, units, apiKey);
}