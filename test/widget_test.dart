import 'package:flutter/cupertino.dart';
import 'package:weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/domain/use_cases/get_weather_use_case.dart';

void main() async {
  var weather = await GetWeatherUseCase().getWeather();
  var rawResult = (await WeatherRepository().getWeather()).toJson();
  debugPrint(rawResult.toString());
  debugPrint(weather.sky);
  debugPrint(weather.temperature);
  debugPrint(weather.feelsLike);
  debugPrint(weather.description);
  debugPrint(weather.humidity);
  debugPrint(weather.pressure);
  debugPrint(weather.windSpeed);
  debugPrint(weather.sunset);
  debugPrint(weather.sunrise);

  var sunrise = DateTime.fromMillisecondsSinceEpoch(1718847461 * 1000, isUtc: true).toLocal();
  var sunset = DateTime.fromMillisecondsSinceEpoch(1718909099 * 1000, isUtc: true).toLocal();
  debugPrint(sunrise.toString());
  debugPrint(sunset.toString());
  debugPrint(DateTime.fromMillisecondsSinceEpoch(1718933872 * 1000, isUtc: true).toLocal().toString());
}
