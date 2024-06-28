import 'package:flutter/material.dart';

import 'presentation/design/colors.dart';
import 'presentation/pages/date_details_page.dart';
import 'utils/utils.dart';
import 'presentation/pages/city_details_page.dart';
import 'presentation/pages/today.dart';

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
        Utils.homeRoute: (context) => const Today(),
      },
    );
  }
}
