import 'package:flutter/material.dart';

const double fem = 1;
const double ffem = 1;

/// SafeGoogleFont - TextStyle
TextStyle SafeGoogleFont(String fontFamily,
    {double? fontSize,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
    required Color color}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    letterSpacing: letterSpacing,
    color: color,
  );
}
