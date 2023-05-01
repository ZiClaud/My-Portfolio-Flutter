import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/utils/media_query.dart';

/// Title
Widget titleBox({required String title1, required String title2}) {
  return Container(
    margin: EdgeInsets.fromLTRB(38 * fem, 0 * fem, 38 * fem, 38 * fem),
    width: double.infinity,
    child: RichText(
      text: TextSpan(
        style: h2Light(color: neutral1Color),
        children: [
          TextSpan(
            text: title1,
            style: h2Light(color: neutral2Color),
          ),
          TextSpan(
            text: title2,
            style: h2Bold(color: neutral1Color),
          ),
        ],
      ),
    ),
  );
}

/// _SafeGoogleFont - TextStyle
TextStyle _SafeGoogleFont(String fontFamily,
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

/// Light
Text _myText(String text, TextStyle textStyle) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: textStyle,
  );
}

TextStyle h1Light({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 56 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    letterSpacing: -1.12 * fem,
    color: color,
  );
}

TextStyle h2Light({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 40 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h3Light({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 32 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h3LightBig({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 32 * ffem,
    fontWeight: FontWeight.w400,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h4Light({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 24 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    letterSpacing: 1.44 * fem,
    color: color,
  );
}

TextStyle h5Light({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

TextStyle body1TextLight({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 18 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle buttonTextLight({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w400,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

/// Bold
TextStyle h1Bold({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 56 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: -1.12 * fem,
    color: color,
  );
}

TextStyle h2Bold({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 40 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h3Bold({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 32 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h4Bold({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 24 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: 1.44 * fem,
    color: color,
  );
}

TextStyle h5Bold({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

TextStyle body1TextBold({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 18 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle buttonTextBold({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

TextStyle label({required Color color}) {
  return _SafeGoogleFont(
    'Work Sans',
    fontSize: 14 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}
