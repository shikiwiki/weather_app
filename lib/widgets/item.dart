import 'package:flutter/material.dart';

import '../design/dimensions.dart';
import '../design/styles.dart';
import '../utils/utils.dart';

class Item extends StatelessWidget {
  final String parameterType;
  final String value;
  final IconData? icon;

  const Item(
      {super.key, required this.parameterType, required this.value, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      child: Card(
        color: Color(Utils.randomColorValue())
            .withOpacity(Utils.itemBackgroundOpacity),
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (icon != null) Icon(icon) else Container(width: iconWidth),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(parameterPadding),
                child: Text(
                  parameterType,
                  maxLines: parameterTypeLines,
                  overflow: TextOverflow.ellipsis,
                  style: parameterStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(valuePadding),
              child: Text(
                value,
                maxLines: valueLines,
                style: valueStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
