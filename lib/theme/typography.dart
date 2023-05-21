import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';

/// Title
class TitleBox extends StatelessWidget {
  final String title1;
  final String title2;
  final bool center;

  const TitleBox({
    super.key,
    required this.title1,
    required this.title2,
    this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 38, right: 38, bottom: 38),
      width: double.infinity,
      child: RichText(
        textAlign: center ? TextAlign.center : TextAlign.start,
        text: TextSpan(
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
}

/// _SafeGoogleFont - TextStyle
TextStyle _safeGoogleFont(String fontFamily,
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
TextStyle h1Light({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 56,
    fontWeight: FontWeight.w300,
    height: 1.5,
    letterSpacing: -1.12,
    color: color,
  );
}

TextStyle h2Light({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 40,
    fontWeight: FontWeight.w300,
    height: 1.5,
    color: color,
  );
}

TextStyle h3Light({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 32,
    fontWeight: FontWeight.w300,
    height: 1.5,
    color: color,
  );
}

TextStyle h3LightBig({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 32,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: color,
  );
}

TextStyle h4Light({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 24,
    fontWeight: FontWeight.w300,
    height: 1.5,
    letterSpacing: 1.44,
    color: color,
  );
}

TextStyle h5Light({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 16,
    fontWeight: FontWeight.w300,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

TextStyle body1TextLight({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 18,
    fontWeight: FontWeight.w300,
    height: 1.5,
    color: color,
  );
}

TextStyle buttonTextLight({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

/// Bold
TextStyle h1Bold({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 56,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: -1.12,
    color: color,
  );
}

TextStyle h2Bold({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 40,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}

TextStyle h3Bold({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}

TextStyle h4Bold({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 1.44,
    color: color,
  );
}

TextStyle h5Bold({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

TextStyle body1TextBold({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}

TextStyle buttonTextBold({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

TextStyle label({required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}
