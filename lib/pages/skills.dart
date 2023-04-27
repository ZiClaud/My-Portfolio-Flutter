import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget getSkillsPage() {
  return Container(
    // skillsi5G (132:231)
    padding: EdgeInsets.fromLTRB(112 * fem, 80 * fem, 112 * fem, 130 * fem),
    width: double.infinity,
    height: 583.9 * fem,
    decoration: BoxDecoration(gradient: backgroundColorGradient),
    child: Container(
      // skillsFzJ (132:232)
      padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
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
    // logospCA (132:235)
    width: double.infinity,
    height: 201.9 * fem,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _image(image: flutterImg),
//                SizedBox(width: 64 * fem),
        _image(image: sqlImg),
//                SizedBox(width: 64 * fem),
        _image(image: pythonImg),
//                SizedBox(width: 64 * fem),
        _image(image: javaImg),
      ],
    ),
  );
}

Widget _image({required Image image}) {
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 0.92 * fem, 0 * fem, 0.92 * fem),
    child: TextButton(
      onPressed: () {},
      // TODO: change image color on hover
      // TODO: onHover: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: SizedBox(
        height: double.infinity,
        child: Center(
          // fluttercoloredoZt (I133:307;133:301)
          child: SizedBox(
            width: 200 * fem,
            height: 200 * fem,
            child: image,
          ),
        ),
      ),
    ),
  );
}
