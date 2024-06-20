import 'package:weather_app/domain/model/parameter.dart';

class WeatherModel {
  final String sky;
  final String description;
  final String temperature;
  final String feelsLike;
  final String pressure;
  final String humidity;
  final String windSpeed;
  final String sunrise;
  final String sunset;

  const WeatherModel({
    this.sky = '',
    this.description = '',
    this.temperature = '',
    this.feelsLike = '',
    this.pressure = '',
    this.humidity = '',
    this.windSpeed = '',
    this.sunrise = '',
    this.sunset = '',
  });

  List<Parameter> toParameterList() {
    return [
      Parameter(parameterType: 'sky', value: sky, icon: null),
      Parameter(parameterType: 'description', value: description, icon: null),
      Parameter(parameterType: 'temperature', value: temperature, icon: null),
      Parameter(parameterType: 'feels like', value: feelsLike, icon: null),
      Parameter(parameterType: 'pressure', value: pressure, icon: null),
      Parameter(parameterType: 'humidity', value: humidity, icon: null),
      Parameter(parameterType: 'wind speed', value: windSpeed, icon: null),
      Parameter(parameterType: 'sunrise', value: sunrise, icon: null),
      Parameter(parameterType: 'sunset', value: sunset, icon: null),
    ];
  }
}
