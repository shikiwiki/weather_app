import 'package:flutter/cupertino.dart';
import 'package:weather_app/domain/use_cases/get_weather_use_case.dart';

void main() async {
  var weather = await GetWeatherUseCase().getWeather();
  debugPrint(weather.sky);
  debugPrint(weather.temperature);
  debugPrint(weather.feelsLike);
  debugPrint(weather.description);
  debugPrint(weather.humidity);
  debugPrint(weather.pressure);
  debugPrint(weather.windSpeed);
  debugPrint(weather.sunset);
  debugPrint(weather.sunrise);
}
