import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';

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
          const TitleBox(title1: 'Some of my ', title2: 'Skills'),
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
        _flutterImg(),
        _sqlImg(),
        _pythonImg(),
        _javaImg(),
        // TODO: Firebase?
      ],
    ),
  );
}

Widget _flutterImg() {
  return const SkillImg(path: "../assets/images/flutterimg.png");
}

Widget _sqlImg() {
  return const SkillImg(path: "../assets/images/sqlimg.png");
}

Widget _pythonImg() {
  return const SkillImg(path: "../assets/images/pythonimg.png");
}

Widget _javaImg() {
  return const SkillImg(path: "../assets/images/javaimg.png");
}
