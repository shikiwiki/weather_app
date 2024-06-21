import 'dart:math' as math;

class Utils {
  static const int zero = 0;
  static const int one = 1;
  static const int ten = 10;
  static const int requestDuration = 2;
  static const double kelvinDifference = 273.15;
  static const double itemBackgroundOpacity = 0.25;
  static const double multiplier = 0xFFFFFF;
  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  static const String key = '9eaa0f8a337234fc6e0bc3ca2f5a78dd';
  static const String city = 'minsk';

  static int randomColorValue() =>
      (math.Random().nextDouble() * Utils.multiplier).toInt();

  static String kelvinToCelsius(double? kelvin) {
    var fullTemperature =
        '${kelvin == null ? '' : (kelvin - kelvinDifference)}°C';
    return fullTemperature.substring(Utils.zero, fullTemperature.indexOf('.'));
  }

  static String monthName(int monthNum) {
    return switch (monthNum) {
      1 => 'January',
      2 => 'February',
      3 => 'March',
      4 => 'April',
      5 => 'May',
      6 => 'June',
      7 => 'July',
      8 => 'August',
      9 => 'September',
      10 => 'October',
      11 => 'November',
      12 => 'December',
      _ => ''
    };
  }
}
