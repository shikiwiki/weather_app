import 'package:flutter/material.dart';
import 'package:weather_app/presentation/pages/city_details_page.dart';
import 'package:weather_app/presentation/pages/search_city.dart';

import '../presentation/design/colors.dart';
import '../presentation/pages/date_details_page.dart';
import '../utils/utils.dart';
import 'pages/today.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Utils.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: orange),
        useMaterial3: true,
      ),
      home: const Today(),
      routes: {
        Utils.dateDetailsRoute: (context) => const DateDetailsPage(),
        Utils.cityDetailsRoute: (context) => const CityDetailsPage(),
        Utils.searchRoute: (context) => const SearchCity(),
      },
    );
  }
}
