import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/utils.dart';

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
      padding: defaultPadding(context, top: 80, bottom: 130),
      width: double.infinity,
      height: 583.9,
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
      width: ResponsiveWidget.getWidth(context),
      height: 201.9,
      child: ResponsiveWidget.isDesktop(context) ? Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          _flutterImg,
          _sqlImg,
          _pythonImg,
          _javaImg,
          // TODO: Firebase?
        ],
      ) : ListView(
        scrollDirection: Axis.horizontal,
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
