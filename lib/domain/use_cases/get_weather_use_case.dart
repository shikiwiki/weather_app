import 'package:flutter/material.dart';
import 'package:weather_app/utils/utils.dart';

import '../model/parameter.dart';

class GetWeatherUseCase {
  List<Parameter> parameters() {
    var now = DateTime.now();

    return [
      Parameter(
          parameterType: 'Date',
          value: "${Utils.monthName(now.month)} ${now.day}, ${now.year}",
          icon: Icons.calendar_month),
      Parameter(
          parameterType: 'Time',
          value:
              "${now.hour}:${Utils.normalizeMinutesAndSeconds(now.minute)}:${Utils.normalizeMinutesAndSeconds(now.second)}",
          icon: Icons.watch_later_outlined),
      const Parameter(
          parameterType: 'City', value: 'Minsk', icon: Icons.location_on),
      const Parameter(
          parameterType: 'Temperature', value: '24 °C', icon: Icons.sunny),
      const Parameter(
          parameterType: 'Feels like',
          value: '22 °C',
          icon: Icons.person_sharp),
      const Parameter(
          parameterType: 'Humidity', value: '56%', icon: Icons.water_drop),
      const Parameter(
          parameterType: 'Wind speed', value: '3 km/h', icon: Icons.wind_power),
      const Parameter(
          parameterType: 'Wind direction',
          value: 'SE',
          icon: Icons.compare_arrows),
      const Parameter(
          parameterType: 'UV index', value: '3', icon: Icons.sunny_snowing),
      const Parameter(
          parameterType: 'Pressure',
          value: '1012 mbar',
          icon: Icons.compress_outlined),
      const Parameter(
          parameterType: 'Sunrise',
          value: '4:38 AM',
          icon: Icons.arrow_circle_up),
      const Parameter(
          parameterType: 'Sunset',
          value: '9:44 PM',
          icon: Icons.arrow_circle_down),
    ];
  }
}
