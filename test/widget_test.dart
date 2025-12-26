import 'package:flutter/cupertino.dart';
import 'package:weather_app/data/dto/weather_dto.dart';
import 'package:weather_app/data/repository/weather_repository.dart';

void main() async {
  var result = await WeatherRepository().getWeather();
  assert(result is WeatherDto);
  var weather = result as WeatherDto;
  debugPrint(weather.toJson().toString());
}
