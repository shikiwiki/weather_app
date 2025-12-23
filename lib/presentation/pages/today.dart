import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../widgets/parameters_list.dart';
import '../widgets/weather_app_bar.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WeatherAppBar(),
      body: Container(
        color: white,
        child: const ParametersList(),
      ),
    );
  }
}
