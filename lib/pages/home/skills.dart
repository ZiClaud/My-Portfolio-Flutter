import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';

const Widget _flutterImg = SkillImg(path: "../assets/images/flutterimg.png");
const Widget _sqlImg = SkillImg(path: "../assets/images/sqlimg.png");
const Widget _pythonImg = SkillImg(path: "../assets/images/pythonimg.png");
const Widget _javaImg = SkillImg(path: "../assets/images/javaimg.png");

Widget getSkillsPage() {
  return Container(
    padding: EdgeInsets.fromLTRB(112 * fem, 80 * fem, 112 * fem, 130 * fem),
    width: double.infinity,
    height: 583.9 * fem,
    child: SizedBox(
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
      children: const [
        _flutterImg,
        _sqlImg,
        _pythonImg,
        _javaImg,
        // TODO: Firebase?
      ],
    ),
  );
}
