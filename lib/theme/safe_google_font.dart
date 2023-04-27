import 'package:flutter/material.dart';

double fem = 1;
double ffem = 1;

void setFEMeFFEM(BuildContext context){
  fem = MediaQuery.of(context).size.width / 1536;
  ffem = MediaQuery.of(context).size.width / 1536;
}

// TODO: Delete SafeGoogleFont import everywhere - it just needs to be in typography.dart
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
