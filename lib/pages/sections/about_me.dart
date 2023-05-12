import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/widgets/about_containers.dart';
import 'package:my_portfolio/widgets/section_containers.dart';

const Widget aboutMeDesignImg = AboutMeImage(
    url:
        "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg");
const Widget aboutMeChessImg = AboutMeImage(
    url:
        "https://media.cnn.com/api/v1/images/stellar/prod/230104173032-02-chess-stock.jpg?c=original");
const Widget aboutMeMusicImg =
    AboutMeImage(url: "https://cdn.fuelrocks.com/1665122987550.jpg");

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionContainerRow(widgets: _aboutMeWidgets(), height: 800);
  }
}

List<Widget> _aboutMeWidgets() {
  return const [
    LeftAboutMeText(),
    RightAboutMeImages(),
  ];
}
