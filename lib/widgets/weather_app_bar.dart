import 'package:flutter/material.dart';
import 'package:weather_app/design/dimensions.dart';

import '../design/colors.dart';
import '../design/styles.dart';

class WeatherAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WeatherAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Today',
        style: titleStyle,
      ),
      centerTitle: true,
      backgroundColor: primary,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(topBarHeight);
}
