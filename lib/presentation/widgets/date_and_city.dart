import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';

class DateAndCityCard extends StatelessWidget {
  const DateAndCityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(itemBorderRadius)),
      ),
      color: secondary,
      child: SizedBox(
        height: cardHeight,
        child: Column(
          children: <Widget>[
            Row(),
            Row(),
          ],
        ),
      ),
    );
  }
}
