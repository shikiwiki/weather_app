import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/model/location.dart';
import '../../utils/utils.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';
import '../design/styles.dart';

class DateAndCity extends StatelessWidget {
  final String date;
  final String cityWithCountryCode;
  final Location location;

  const DateAndCity({
    super.key,
    required this.date,
    required this.cityWithCountryCode,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: cardHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(itemBorderRadius)),
            ),
            semanticContainer: true,
            clipBehavior: Clip.none,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, Utils.dateDetailsRoute,
                    arguments: {Utils.date: date});
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.sizeOf(context).width *
                        Utils.dateCardMultiplier,
                    height: cardHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Image.asset(Utils.skyAsset).image,
                        opacity: Utils.dateBackgroundOpacity,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: cardHeight,
                    width: MediaQuery.sizeOf(context).width *
                        Utils.dateCardMultiplier,
                    child: Center(child: Text(date, style: boldDetailsStyle)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: screenWidth * Utils.separatorMultiplier),
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(itemBorderRadius)),
            ),
            color: secondary,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, Utils.cityDetailsRoute,
                    arguments: {Utils.location: location});
              },
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: screenWidth * Utils.cityMultiplier,
                    child: Opacity(
                      opacity: Utils.cityBackgroundOpacity,
                      child: SvgPicture.asset(
                        fit: BoxFit.fill,
                        Utils.mapAsset,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: cardHeight,
                    width: screenWidth * Utils.cityMultiplier,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on),
                          const SizedBox(height: separatorHeight),
                          Text(cityWithCountryCode,
                              textAlign: TextAlign.end,
                              maxLines: Utils.three,
                              style: cityStyle),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
