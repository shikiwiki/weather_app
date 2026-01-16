import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'location.dart';
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
    this.date = Utils.empty,
    this.sky = Utils.empty,
    this.description = Utils.empty,
    this.temperature = Utils.empty,
    this.feelsLike = Utils.empty,
    this.pressure = Utils.empty,
    this.humidity = Utils.empty,
    this.windSpeed = Utils.empty,
    this.sunrise = Utils.empty,
    this.sunset = Utils.empty,
    this.location,
  });

  List<Parameter> toParameterList() => [
        Parameter(
          parameterType: Utils.sky,
          value: sky,
          icon: Icons.cloud,
        ),
        Parameter(
            parameterType: Utils.description,
            value: description,
            icon: Icons.cloud_sync),
        Parameter(
            parameterType: Utils.temperature,
            value: temperature,
            icon: Icons.sunny),
        Parameter(
            parameterType: Utils.feelsLike,
            value: feelsLike,
            icon: Icons.person_sharp),
        Parameter(
            parameterType: Utils.pressure,
            value: pressure,
            icon: Icons.compress_outlined),
        Parameter(
            parameterType: Utils.humidity,
            value: humidity,
            icon: Icons.water_drop),
        Parameter(
            parameterType: Utils.windSpeed,
            value: windSpeed,
            icon: Icons.wind_power),
        Parameter(
            parameterType: Utils.sunrise,
            value: sunrise,
            icon: Icons.arrow_circle_up),
        Parameter(
            parameterType: Utils.sunset,
            value: sunset,
            icon: Icons.arrow_circle_down),
      ];
}
