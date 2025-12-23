import 'package:flutter/material.dart';

import '../../presentation/design/styles.dart';
import '../../utils/utils.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';

class DateAndCity extends StatelessWidget {
  final String date;
  final String cityWithCountryCode;

  const DateAndCity(
      {super.key, required this.date, required this.cityWithCountryCode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: cardHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(itemBorderRadius)),
              ),
              semanticContainer: true,
              clipBehavior: Clip.none,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.sizeOf(context).width *
                        Utils.dateCardMultiplier,
                    height: cardHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Image.asset('assets/images/sky.png').image,
                        opacity: Utils.dateOpacity,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: cardHeight,
                    width: MediaQuery.sizeOf(context).width *
                        Utils.dateCardMultiplier,
                    child: Center(child: Text(date, style: dateStyle)),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width *
                    Utils.separatorMultiplier),
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(itemBorderRadius)),
              ),
              color: secondary,
              child: SizedBox(
                height: cardHeight,
                width: MediaQuery.sizeOf(context).width * Utils.cityMultiplier,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(
                        height: separatorHeight,
                      ),
                      Text(cityWithCountryCode,
                          textAlign: TextAlign.end,
                          maxLines: Utils.two,
                          style: cityStyle),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
