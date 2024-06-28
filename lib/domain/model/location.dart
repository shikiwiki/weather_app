import '../../utils/utils.dart';

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
    city = Utils.empty;
    countryCode = Utils.empty;
    longitude = Utils.zero.toDouble();
    latitude = Utils.zero.toDouble();
  }
}
