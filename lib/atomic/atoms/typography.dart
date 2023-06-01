import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/responsive.dart';

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
        textAlign: (center || ResponsiveWidget.isMobile(context))
            ? TextAlign.center
            : TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title1 ",
              style: h2Light(context, color: neutral2Color),
            ),
            TextSpan(
              text: title2,
              style: h2Bold(context, color: neutral1Color),
            ),
          ],
        ),
      ),
    );
  }
}

enum Sizes {
  h1(56.0, 40.0),
  h2(40.0, 36.0),
  h3(32.0, 28.0),
  h4(24.0, 22.0),
  h5(16.0, 16.0),
  body1(18.0, 16.0),
  button(16.0, 14.0),
  label(14.0, 12.0);

  final double desktop;
  final double mobile;

  const Sizes(this.desktop, this.mobile);

  double get(BuildContext context) {
    if (ResponsiveWidget.isDesktop(context)) {
      return desktop;
    } else {
      return mobile;
    }
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
TextStyle h1Light(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h1.get(context),
    fontWeight: FontWeight.w300,
    height: 1.5,
    letterSpacing: -1.12,
    color: color,
  );
}

TextStyle h2Light(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h2.get(context),
    fontWeight: FontWeight.w300,
    height: 1.5,
    color: color,
  );
}

TextStyle h3Light(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h3.get(context),
    fontWeight: FontWeight.w300,
    height: 1.5,
    color: color,
  );
}

TextStyle h3LightBig(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h3.get(context),
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: color,
  );
}

TextStyle h4Light(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h4.get(context),
    fontWeight: FontWeight.w300,
    height: 1.5,
    letterSpacing: 1.44,
    color: color,
  );
}

TextStyle h5Light(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h5.get(context),
    fontWeight: FontWeight.w300,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

TextStyle body1TextLight(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.body1.get(context),
    fontWeight: FontWeight.w300,
    height: 1.5,
    color: color,
  );
}

TextStyle buttonTextLight(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.button.get(context),
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

/// Bold
TextStyle h1Bold(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h1.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: -1.12,
    color: color,
  );
}

TextStyle h2Bold(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h2.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}

TextStyle h3Bold(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h3.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}

TextStyle h4Bold(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h4.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 1.44,
    color: color,
  );
}

TextStyle h5Bold(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.h5.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

TextStyle body1TextBold(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.body1.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}

TextStyle buttonTextBold(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.button.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.64,
    color: color,
  );
}

TextStyle label(BuildContext context, {required Color color}) {
  return _safeGoogleFont(
    'Work Sans',
    fontSize: Sizes.label.get(context),
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: color,
  );
}
