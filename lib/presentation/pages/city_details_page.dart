import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/location.dart';

import '../../utils/utils.dart';
import '../design/styles.dart';
import '../widgets/weather_app_bar.dart';

class CityDetailsPage extends StatelessWidget {
  const CityDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final location = args['location'] as Location;
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
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Your are now in\n',
                style: dateDetailsStyle,
              ),
              TextSpan(
                text: city,
                style: dateStyle,
              ),
              TextSpan(
                text: '\nlocated in\n',
                style: dateDetailsStyle,
              ),
              TextSpan(
                text: Utils.countryByCode(countryCode!),
                style: dateStyle,
              ),
              TextSpan(
                text: '\nIt is on longitude of\n',
                style: dateDetailsStyle,
              ),
              TextSpan(
                text: longitude.toString(),
                style: dateStyle,
              ),
              TextSpan(
                text: '\nand latitude of\n',
                style: dateDetailsStyle,
              ),
              TextSpan(
                text: latitude.toString(),
                style: dateStyle,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}