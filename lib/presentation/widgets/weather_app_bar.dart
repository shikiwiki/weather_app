import 'package:flutter/material.dart';
import '../design/dimensions.dart';
import '../design/styles.dart';
import '../design/colors.dart';

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
  Size get preferredSize => const Size.fromHeight(topBarHeight);
}
