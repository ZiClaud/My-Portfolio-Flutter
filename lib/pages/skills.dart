import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/container.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget getSkillsPage() {
  return Container(
    padding: EdgeInsets.fromLTRB(112 * fem, 80 * fem, 112 * fem, 130 * fem),
    width: double.infinity,
    height: 583.9 * fem,
    decoration: const BoxDecoration(gradient: backgroundColorGradient),
    child: SizedBox(
      // skillsFzJ (132:232)
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleBox(title1: 'Some of my ', title2: 'Skills'),
          _skillsBox(),
        ],
      ),
    ),
  );
}

Widget _skillsBox() {
  return SizedBox(
    width: double.infinity,
    height: 201.9 * fem,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        clickableImage(image: flutterImg, onPressed: () {}),
        // TODO: onPressed function
        clickableImage(image: sqlImg, onPressed: () {}),
        // TODO: onPressed function
        clickableImage(image: pythonImg, onPressed: () {}),
        // TODO: onPressed function
        clickableImage(image: javaImg, onPressed: () {}),
        // TODO: onPressed function
      ],
    ),
  );
}
