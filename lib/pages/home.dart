import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/container.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget getHomePage() {
  return sectionContainer(_homePageWidgets());
  /*
  TODO: REMOVE

  return Container(
    // homeHaA (77:258)
    padding: EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: backgroundColorGradient,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _homePageStuff()[0],
        _homePageStuff()[1],
      ],
    ),
  );
  */
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
          // logo7Si (I132:214;10:1132)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 921.8 * fem, 1.5 * fem),
          width: 95.2 * fem,
          height: 28 * fem,
          child: Image.network(
            invisiblePath, //TODO: Put my logo?
            width: 95.2 * fem,
            height: 28 * fem,
          ),
        ),
        SizedBox(
          // navitemsbcn (I132:214;10:1122)
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                // listitemdefaultJn6 (I132:214;10:1123)
                height: double.infinity,
                child: Text(
                  'HOME',
                  style: label(color: primaryColor),
                ),
              ),
              SizedBox(
                width: 32 * fem,
              ),
              TextButton(
                // listitemdefaultiqp (I132:214;10:1124)
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  height: double.infinity,
                  child: Text(
                    'WORK',
                    style: label(color: neutral1Color),
                  ),
                ),
              ),
              SizedBox(
                width: 32 * fem,
              ),
              TextButton(
                // listitemdefault14E (I132:214;10:1125)
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  height: double.infinity,
                  child: Text(
                    'ABOUT',
                    style: label(color: neutral1Color),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _titleAndJobWidget() {
  return Container(
    // claudiodimaiosoftwaredeveloper (132:216)
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
    // iconchevrondownKWA (132:217)
    width: 20 * fem,
    height: 10 * fem,
    child: arrowDownImg,
  );
}

List<Widget> _homePageWidgets() {
  List<Widget> stuff = [];
  stuff.add(_headerWidget());
  stuff.add(_titleAndJobWidget());
  stuff.add(_arrowDownWidget());

  return stuff;
}
