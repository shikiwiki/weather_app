import 'package:dio/dio.dart';

import '../../utils/utils.dart';
import '../dto/weather_dto.dart';

class WeatherRepository {
  Future<WeatherDto> getWeather() async {
    var response = await Dio().get(
      Utils.baseUrl,
      queryParameters: {
        'q': Utils.city,
        'appid': Utils.key,
      },
    );
    var data = response.data as Map<String, dynamic>;
    var weatherDto = WeatherDto.fromJson(data);
    return weatherDto;
  }
}
