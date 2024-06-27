import 'dart:math' as math;

class Utils {
  static const int zero = 0;
  static const int one = 1;
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
  static const double dateBackgroundOpacity = 0.5;
  static const double cityBackgroundOpacity = 0.75;

  static const String appName = 'Weather App';
  static const String mainPageName = 'Today';

  static const String dateDetailsRoute = '/date_details';
  static const String cityDetailsRoute = '/city_details';
  static const String homeRoute = '/today';

  static const String playwriteFontFamily = 'Playwrite';

  static const String skyAsset = 'assets/images/sky.png';
  static const String mapAsset = 'assets/images/map.svg';

  static const String searchCityHint = 'input your city';
  static const String date = 'date';
  static const String city = 'city';
  static const String minsk = 'minsk';
  static const String location = 'location';
  static const String empty = '';
  static const String celsiusSign = '°C';
  static const String mbarSign = ' mbar';
  static const String enterSymbol = '\n';
  static const String colonSymbol = ':';
  static const String percentSymbol = '%';
  static const String speedSign = ' km/h';

  static const String cityQueryParam = 'q';
  static const String keyQueryParam = 'appid';

  static const String dateDetailsStartPart = 'Today we have\n';
  static const String dateDetailsEndPart =
      '\n\n- the best day\nto start making\nyour dreams come true!';

  static const String cityDetailsPart1 = 'Your are now in\n';
  static const String cityDetailsPart2 = '\nlocated in\n';
  static const String cityDetailsPart3 = '\nIt is on longitude of\n';
  static const String cityDetailsPart4 = '\nand latitude of\n';

  static const String sky = 'sky';
  static const String description = 'description';
  static const String temperature = 'temperature';
  static const String feelsLike = 'feels like';
  static const String pressure = 'pressure';
  static const String humidity = 'humidity';
  static const String windSpeed = 'wind speed';
  static const String sunrise = 'sunrise';
  static const String sunset = 'sunset';

  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  static const String key = '9eaa0f8a337234fc6e0bc3ca2f5a78dd';

  static int randomColorValue() =>
      (math.Random().nextDouble() * Utils.colorMultiplier).toInt();

  static String kelvinToCelsius(double? kelvin) {
    var fullTemperature =
        '${kelvin == null ? empty : (kelvin - kelvinDifference)}$celsiusSign';
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
    switch (code.toLowerCase()) {
      case ('am'): return 'Armenia';
      case ('az'): return 'Azerbaijan';
      case ('bh'): return 'Bahrain';
      case ('by'): return 'Belarus';
      case ('cy'): return 'Cyprus';
      case ('ge'): return 'Georgia';
      case ('iq'): return 'Iraq';
      case ('ir'): return 'Iran';
      case ('il'): return 'Israel';
      case ('jo'): return 'Jordan';
      case ('kw'): return 'Kuwait';
      case ('kg'): return 'Kyrgyzstan';
      case ('lb'): return 'Lebanon';
      case ('my'): return 'Malaysia';
      case ('om'): return 'Oman';
      case ('ps'): return 'Palestine';
      case ('qa'): return 'Qatar';
      case ('sa'): return 'Saudi Arabia';
      case ('sy'): return 'Syria';
      case ('th'): return 'Thailand';
      case ('tr'): return 'Turkey';
      case ('tm'): return 'Turkmenistan';
      case ('ua'): return 'Ukraine';
      case ('ae'): return 'United Arab Emirates';
      case ('uz'): return 'Uzbekistan';
      case ('ye'): return 'Yemen';
      default:
        return '$code country code';
    }
  }
}
