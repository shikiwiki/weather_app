import 'package:dio/dio.dart';
import 'package:weather_app/utils/utils.dart';

import '../dto/weather_dto.dart';
class WeatherRepository {

  Future<WeatherDto> getWeather() async {
    var result = await Dio().get(Utils.url) as WeatherDto;
    return result;
  }
}