import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/utils/utils.dart';

import '../dto/weather_dto.dart';

class WeatherRepository {
  late var dio = Dio();

  void addInterceptors() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          debugPrint('requesting with options: $options');
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          debugPrint(response.statusMessage);
          debugPrint(response.data);
          debugPrint(response.statusCode.toString());
          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          debugPrint(error.message);
          return handler.next(error);
        },
      ),
    );
  }

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
