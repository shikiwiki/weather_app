import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';
import '../design/styles.dart';

class WeatherAppBar extends StatelessWidget implements PreferredSizeWidget {

  const WeatherAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    if (Navigator.canPop(context)) {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          Utils.mainPageName,
          style: titleStyle,
        ),
        centerTitle: true,
        backgroundColor: primary,
      );
    } else {
      return AppBar(
        title: const Text(
          Utils.mainPageName,
          style: titleStyle,
        ),
        centerTitle: true,
        backgroundColor: primary,
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(topBarHeight);
}
