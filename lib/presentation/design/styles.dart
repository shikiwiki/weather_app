import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

const titleStyle = TextStyle(
  color: white,
  fontSize: titleSize,
  fontWeight: FontWeight.w900,
);

const parameterStyle = TextStyle(
    color: darkGrey,
    fontSize: parameterSize,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic);

const valueStyle = TextStyle(
  color: primaryVariant,
  fontSize: parameterSize,
  fontWeight: FontWeight.w800,
);

const errorStyle = TextStyle(
  color: Colors.white,
  fontSize: errorSize,
  fontWeight: FontWeight.w400,
);

var dateStyle = TextStyle(
  fontSize: dateSize,
  foreground: Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = dateStrokeWidth
    ..color = blue,
  fontFamily: 'Playwrite',
);

const cityStyle = TextStyle(
  fontSize: citySize,
  color: darkBlue,
  letterSpacing: cityLetterSpacing,
  decorationStyle: TextDecorationStyle.dotted,
  decoration: TextDecoration.underline,
  fontStyle: FontStyle.italic,
);
