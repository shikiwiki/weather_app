import 'package:weather_app/utils/utils.dart';

class Location {
  String? city;
  String? countryCode;
  double? longitude;
  double? latitude;

  Location({
    required this.city,
    required this.countryCode,
    required this.longitude,
    required this.latitude,
  });

  Location.empty() {
    city = '';
    countryCode = '';
    longitude = Utils.zero.toDouble();
    latitude = Utils.zero.toDouble();
  }
}
