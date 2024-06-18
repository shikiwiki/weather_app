import 'package:dio/dio.dart';
import 'package:weather_app/utils/utils.dart';

import '../dto/weather_dto.dart';

class WeatherRepository {
  Future<dynamic> getWeather() async {
    var response = await Dio().get(
      Utils.baseUrl,
      queryParameters: {
        'q': Utils.city,
        'appid': Utils.key,
      },
    );
    var data = response.data as Map<String, dynamic>;
    var weather = WeatherDto.fromJson(data);
    return weather;
  }
}
