import 'dart:math' as math;
import 'package:weather_app/domain/model/parameter.dart';

class Utils {
  static const int ten = 10;
  static const double itemBackgroundOpacity = 0.25;
  static const double multiplier = 0xFFFFFF;

  static int randomColorValue() =>
      (math.Random().nextDouble() * Utils.multiplier).toInt();

  static List<Parameter> parameters() {
    var now = DateTime.now();

    return [
      Parameter(
          parameterType: 'Date',
          value: "${monthName(now.month)} ${now.day}, ${now.year}"),
      Parameter(
          parameterType: 'Time',
          value:
              "${now.hour}:${addZeroIfNeeded(now.minute)}:${now.millisecond}"),
      const Parameter(parameterType: 'City', value: 'Minsk'),
      const Parameter(parameterType: 'Temperature', value: '24'),
      const Parameter(parameterType: 'Feels like', value: '22'),
      const Parameter(parameterType: 'Humidity', value: '56%'),
      const Parameter(parameterType: 'Wind speed', value: '3 km/h'),
      const Parameter(parameterType: 'Wind direction', value: 'SE'),
      const Parameter(parameterType: 'UV index', value: '3'),
      const Parameter(parameterType: 'Pressure', value: '1012 mbar'),
      const Parameter(parameterType: 'Sunrise', value: '4:38 AM'),
      const Parameter(parameterType: 'Sunset', value: '9:44 PM'),
    ];
  }

  static String addZeroIfNeeded(int number) {
    if (number < ten) {
      return "0$number";
    } else {
      return number.toString();
    }
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
