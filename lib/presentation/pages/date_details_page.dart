import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../design/styles.dart';
import '../widgets/weather_app_bar.dart';

class DateDetailsPage extends StatelessWidget {
  const DateDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final date = args[Utils.date] as String;
    final weekDay = date.substring(Utils.zero, date.indexOf(Utils.enterSymbol));
    return Scaffold(
      appBar: const WeatherAppBar(),
      body: Card(
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: Utils.dateDetailsStartPart,
                  style: detailsStyle,
                ),
                TextSpan(
                  text: weekDay,
                  style: boldDetailsStyle,
                ),
                TextSpan(
                  text: Utils.dateDetailsEndPart,
                  style: detailsStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
