import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/utils.dart';
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

var boldDetailsStyle = TextStyle(
  fontSize: dateSize,
  foreground: Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = dateStrokeWidth
    ..color = blue,
  fontFamily: Utils.playwriteFontFamily,
);

const cityStyle = TextStyle(
  fontSize: citySize,
  color: darkBlue,
  letterSpacing: cityLetterSpacing,
  decorationStyle: TextDecorationStyle.dotted,
  decoration: TextDecoration.underline,
  fontStyle: FontStyle.italic,
);

var detailsStyle = GoogleFonts.aBeeZee(
  textStyle: const TextStyle(fontSize: detailsSize, color: orange),
);
