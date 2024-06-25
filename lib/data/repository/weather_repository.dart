import 'package:dio/dio.dart';

import '../../utils/utils.dart';
import '../dto/weather_dto.dart';

class WeatherRepository {
  Future<WeatherDto> getWeather(String city) async {
    var response = await Dio().get(
      Utils.baseUrl,
      queryParameters: {
        'q': city,
        'appid': Utils.key,
      },
    );
    var data = response.data as Map<String, dynamic>;
    var weatherDto = WeatherDto.fromJson(data);
    return weatherDto;
  }
}
