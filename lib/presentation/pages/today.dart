import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';
import '../search_delegates/custom_search_delegate.dart';
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
        child: Builder(
          builder: (context) => FloatingActionButton(
            backgroundColor: secondary,
            splashColor: white,
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            child: const Icon(
              Icons.search,
              size: searchIconSize,
              color: primary,
            ),
          ),
        ),
      ),
    );
  }
}
