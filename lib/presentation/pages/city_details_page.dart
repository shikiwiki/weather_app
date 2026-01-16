import 'package:flutter/material.dart';

import '../../domain/model/location.dart';
import '../../utils/utils.dart';
import '../design/styles.dart';
import '../widgets/weather_app_bar.dart';

class CityDetailsPage extends StatelessWidget {
  const CityDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final location = args[Utils.location] as Location;
    final city = location.city;
    final countryCode = location.countryCode;
    final longitude = location.longitude;
    final latitude = location.latitude;

    return Scaffold(
      appBar: const WeatherAppBar(),
      body: Card(
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: Utils.cityDetailsPart1,
                  style: detailsStyle,
                ),
                TextSpan(
                  text: city,
                  style: boldDetailsStyle,
                ),
                TextSpan(
                  text: Utils.cityDetailsPart2,
                  style: detailsStyle,
                ),
                TextSpan(
                  text: Utils.countryByCode(countryCode!),
                  style: boldDetailsStyle,
                ),
                TextSpan(
                  text: Utils.cityDetailsPart3,
                  style: detailsStyle,
                ),
                TextSpan(
                  text: longitude.toString(),
                  style: boldDetailsStyle,
                ),
                TextSpan(
                  text: Utils.cityDetailsPart4,
                  style: detailsStyle,
                ),
                TextSpan(
                  text: latitude.toString(),
                  style: boldDetailsStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
