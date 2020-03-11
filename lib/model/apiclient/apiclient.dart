import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../weather_api_response.dart';

part 'apiclient.g.dart';


final apiClient = ApiClient(Dio());

@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5/')
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET("/weather")
  Future<WeatherApiResponse> getWeatherForCity(
      @Query('q')
      String cityName,
      @Query('lang')
      String language,
      @Query('units')
      String units,
      @Query('appid')
      String apiKey
      );
}