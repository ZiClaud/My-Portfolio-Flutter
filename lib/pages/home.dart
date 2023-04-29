import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/container.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget getHomePage() {
  return sectionContainerColumn(_homePageWidgets());
}

Widget _headerWidget() {
  return Container(
    // headerQoC (132:214)
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 244 * fem),
    padding: EdgeInsets.fromLTRB(0 * fem, 9 * fem, 0 * fem, 7.5 * fem),
    width: double.infinity,
    height: 48 * fem,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 921.8 * fem, 1.5 * fem),
          width: 48 * fem,
          height: 48 * fem,
          child: logoImage(),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            clickableText(text: "HOME", onPressed: () {}),
            // TODO: onPressed function
            SizedBox(width: 32 * fem),
            clickableText(text: "WORK", onPressed: () {}),
            // TODO: onPressed function
            SizedBox(width: 32 * fem),
            clickableText(text: "ABOUT", onPressed: () {}),
            // TODO: onPressed function
          ],
        ),
      ],
    ),
  );
}

Widget _titleAndJobWidget() {
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 249 * fem),
    constraints: BoxConstraints(
      maxWidth: 493 * fem,
    ),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: h1Bold(color: neutral1Color),
        children: [
          TextSpan(
            text: 'Claudio Di Maio\n',
            style: h1Bold(color: neutral1Color),
          ),
          TextSpan(
            text: 'Software Developer',
            style: h1Light(color: neutral2Color),
          ),
        ],
      ),
    ),
  );
}

Widget _arrowDownWidget() {
  return SizedBox(
    width: 20 * fem,
    height: 10 * fem,
    child: arrowDownImg,
  );
}

List<Widget> _homePageWidgets() {
  return [
    _headerWidget(),
    _titleAndJobWidget(),
    _arrowDownWidget(),
  ];
}
