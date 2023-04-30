import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/container.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/utils.dart';

Widget getFooterPage() {
  return sectionContainerRow(_footerWidgets(), isFooter: true);
}

List<Widget> _footerWidgets() {
  return [
    _leftImages(350),
    _rightText(350),
  ];
}

Widget _leftImages(double squareSize) {
  return SizedBox(
    width: squareSize * fem,
    height: squareSize * fem,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          /// Position of everything
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 42 * fem),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                /// Position of Github
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 93 * fem, 83.25 * fem),
                width: 100 * fem,
                height: 100 * fem,
                child: clickableImage(
                  image: gitHubImg,
                  onPressed: () {
                    launchMyUrl('https://github.com/ZiClaud');
                  },
                ),
              ),
              SizedBox(
                /// Position of Linkedin
                width: 100 * fem,
                height: 100 * fem,
                child: clickableImage(
                  image: linkedinImg,
                  onPressed: () {
                    launchMyUrl('https://www.linkedin.com/in/claudio-di-maio/');
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          /// Position of Mail
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 92 * fem, 0 * fem),
          width: 100 * fem,
          height: 100 * fem,
          child: clickableImage(
            image: mailImg,
            onPressed: () {
              // TODO: Fix
              sendEmail("claudiodimaiozc@gmail.com");
            },
          ),
        ),
      ],
    ),
  );
}

Widget _rightText(double squareSize) {
  return SizedBox(
    height: squareSize * fem,
    width: squareSize * fem,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // getintouchh6a (146:211)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: h1Light(color: whiteColor),
              children: [
                TextSpan(
                  text: 'Get ',
                  style: h1Light(color: neutral2Color),
                ),
                TextSpan(
                  text: 'in Touch.',
                  style: h1Bold(color: neutral1Color),
                ),
              ],
            ),
          ),
        ),
        Text(
          // descriptionXtE (146:212)
          'So that we can start working together!',
          textAlign: TextAlign.center,
          style: body1TextLight(color: neutral1Color),
        ),
      ],
    ),
  );
}
