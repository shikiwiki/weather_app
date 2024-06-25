import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/location.dart';
import 'parameter.dart';

class WeatherModel {

  final String date;
  final String sky;
  final String description;
  final String temperature;
  final String feelsLike;
  final String pressure;
  final String humidity;
  final String windSpeed;
  final String sunrise;
  final String sunset;
  final Location? location;

  const WeatherModel({
    this.date = '',
    this.sky = '',
    this.description = '',
    this.temperature = '',
    this.feelsLike = '',
    this.pressure = '',
    this.humidity = '',
    this.windSpeed = '',
    this.sunrise = '',
    this.sunset = '',
    this.location,
  });

  List<Parameter> toParameterList() => [
      Parameter(parameterType: 'sky', value: sky, icon: Icons.cloud),
      Parameter(parameterType: 'description', value: description, icon: Icons.cloud_sync),
      Parameter(parameterType: 'temperature', value: temperature, icon: Icons.sunny),
      Parameter(parameterType: 'feels like', value: feelsLike, icon: Icons.person_sharp),
      Parameter(parameterType: 'pressure', value: pressure, icon: Icons.compress_outlined),
      Parameter(parameterType: 'humidity', value: humidity, icon: Icons.water_drop),
      Parameter(parameterType: 'wind speed', value: windSpeed, icon: Icons.wind_power),
      Parameter(parameterType: 'sunrise', value: sunrise, icon: Icons.arrow_circle_up),
      Parameter(parameterType: 'sunset', value: sunset, icon: Icons.arrow_circle_down),
    ];
}
