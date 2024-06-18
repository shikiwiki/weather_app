import 'package:flutter/material.dart';
import 'package:weather_app/presentation/design/colors.dart';
import 'package:weather_app/presentation/design/dimensions.dart';

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
