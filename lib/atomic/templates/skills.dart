import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/responsive.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/atomic/molecules/image_container/skills_image_container.dart';
import 'package:my_portfolio/data/images.dart';
import 'package:my_portfolio/utils/utils.dart';

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
          children: [
            TitleBox(title1: tr("skills_title1"), title2: tr("skills_title2")),
            const _SkillsBox(),
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
      height: 200,
      child: ResponsiveWidget.isDesktop(context)
          ? const Row(
              //TODO: Change this code -> On ovverride make it listview
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SkillImg(path: flutterImgPath),
                SkillImg(path: sqlImgPath),
                SkillImg(path: pythonImgPath),
                SkillImg(path: javaImgPath),
              ],
            )
          : ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SkillImg(path: flutterImgPath),
                SkillImg(path: sqlImgPath),
                SkillImg(path: pythonImgPath),
                SkillImg(path: javaImgPath),
              ],
            ),
    );
  }
}
