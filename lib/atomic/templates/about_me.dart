import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/icons/icons.dart';
import 'package:my_portfolio/atomic/molecules/responsive/responsive.dart';
import 'package:my_portfolio/atomic/molecules/responsive/responsive_widgets.dart';
import 'package:my_portfolio/atomic/organisms/about_containers.dart';
import 'package:my_portfolio/data/images.dart';
import 'package:my_portfolio/utils/utils.dart';

const AboutMeImage aboutMeDesignImg = AboutMeImage(url: aboutMeDesignImgPath);
const AboutMeImage aboutMeChessImg = AboutMeImage(url: aboutMeChessImgPath);
const AboutMeImage aboutMeMusicImg = AboutMeImage(url: aboutMeMusicImgPath);

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SectionContainerRowAboutMe(
        height: 800, children: _aboutMeWidgets());
  }
}

class _SectionContainerRowAboutMe extends StatelessWidget {
  final List<Widget> children;
  final double height;

  const _SectionContainerRowAboutMe({
    required this.children,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBox(
      padding: defaultPadding(context),
      width: double.infinity,
      height: height,
      child: ResponsiveWidget(
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (Widget child in children) child,
          ],
        ),
        mobile: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [children.first],
        ),
      ),
    );
  }
}

List<Widget> _aboutMeWidgets() {
  return const [
    AboutMeText(),
    AboutMeImages(),
  ];
}
