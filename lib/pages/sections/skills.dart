import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';

const SkillImg _flutterImg = SkillImg(path: "../assets/images/flutterimg.png");
const SkillImg _sqlImg = SkillImg(path: "../assets/images/sqlimg.png");
const SkillImg _pythonImg = SkillImg(path: "../assets/images/pythonimg.png");
const SkillImg _javaImg = SkillImg(path: "../assets/images/javaimg.png");

class SkillsPage extends StatelessWidget {
  const SkillsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 112 * fem, top: 80 * fem, right: 112 * fem, bottom: 130 * fem),
      width: double.infinity,
      height: 583.9 * fem,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleBox(title1: 'Some of my ', title2: 'Skills'),
            _SkillsBox(),
          ],
        ),
      ),
    );
  }
}

class _SkillsBox extends StatelessWidget {
  const _SkillsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
