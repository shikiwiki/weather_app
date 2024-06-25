import 'dart:math' as math;

class Utils {
  static const int zero = 0;
  static const int one = 1;
  static const int two = 2;
  static const int three = 3;
  static const int ten = 10;
  static const int thousand = 1000;
  static const int requestDuration = 2;
  static const double kelvinDifference = 273.15;
  static const double itemBackgroundOpacity = 0.25;
  static const double colorMultiplier = 0xFFFFFF;
  static const double dateCardMultiplier = 0.6;
  static const double separatorMultiplier = 0.01;
  static const double cityMultiplier = 0.3;
  static const double cityBackgroundMultiplier = 0.2;
  static const double dateBackgroundOpacity = 0.5;
  static const double cityBackgroundOpacity = 0.75;

  static const String appName = 'Weather App';
  static const String mainPageName = 'Today';

  static const String dateDetailsRoute = '/date_details';
  static const String cityDetailsRoute = '/city_details';

  static const String playwriteFontFamily = 'Playwrite';

  static const String skyAsset = 'assets/images/sky.png';
  static const String mapAsset = 'assets/images/map.svg';

  static const String date = 'date';
  static const String enterSymbol = '\n';
  static const String detailsStartPart = 'Today we have\n';
  static const String detailsEndPart =
      '\n\n- the best day\nto start making\nyour dreams come true!';

  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  static const String key = '9eaa0f8a337234fc6e0bc3ca2f5a78dd';
  static const String city = 'minsk';

  static int randomColorValue() =>
      (math.Random().nextDouble() * Utils.colorMultiplier).toInt();

  static String kelvinToCelsius(double? kelvin) {
    var fullTemperature =
        '${kelvin == null ? '' : (kelvin - kelvinDifference)}°C';
    return fullTemperature.substring(Utils.zero, fullTemperature.indexOf('.'));
  }

  static String weekDayName(int weekDayNum) {
    return switch (weekDayNum) {
      1 => 'Monday',
      2 => 'Tuesday',
      3 => 'Wednesday',
      4 => 'Thursday',
      5 => 'Friday',
      6 => 'Saturday',
      7 => 'Sunday',
      _ => ''
    };
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

  static String countryByCode(String code) {
    switch (code) {
      case ('IN'):
        return 'India';
      case ('BY'):
        return 'Belarus';
      case ('AZ'):
        return 'Azerbaijan';
      case ('KZ'):
        return 'Kazakhstan';
      case ('UK'):
        return 'Ukraine';
      case ('RU'):
        return 'Russia';
      case ('CY'):
        return 'Cyprus';
      case ('PL'):
        return 'Poland';
      case ('CZ'):
        return 'Czech Republic';
      default:
        return '$code country code';
    }
  }
}
