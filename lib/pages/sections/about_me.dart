import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/responsive/responsive_widgets.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/utils/utils.dart';
import 'package:my_portfolio/widgets/about_containers.dart';

const AboutMeImage aboutMeDesignImg = AboutMeImage(url: "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg");
const AboutMeImage aboutMeChessImg = AboutMeImage(url: "https://media.cnn.com/api/v1/images/stellar/prod/230104173032-02-chess-stock.jpg?c=original");
const AboutMeImage aboutMeMusicImg = AboutMeImage(url: "https://cdn.fuelrocks.com/1665122987550.jpg");

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
