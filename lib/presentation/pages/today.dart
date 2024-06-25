import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(parameterPadding),
        child: FloatingActionButton(
          backgroundColor: secondary,
          splashColor: white,
          onPressed: () {
            Navigator.pushNamed(context, Utils.searchRoute);
          },
          child: const Icon(
            Icons.search,
            size: searchIconSize,
            color: primary,
          ),
        ),
      ),
    );
  }
}
