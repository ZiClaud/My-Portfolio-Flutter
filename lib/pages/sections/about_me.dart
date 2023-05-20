import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/widgets/about_containers.dart';
import 'package:my_portfolio/widgets/section_containers.dart';

const AboutMeImage aboutMeDesignImg = AboutMeImage(
    url:
        "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg");
const AboutMeImage aboutMeChessImg = AboutMeImage(
    url:
        "https://media.cnn.com/api/v1/images/stellar/prod/230104173032-02-chess-stock.jpg?c=original");
const AboutMeImage aboutMeMusicImg =
    AboutMeImage(url: "https://cdn.fuelrocks.com/1665122987550.jpg");

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionContainerRow(height: 800, children: _aboutMeWidgets());
  }
}

List<Widget> _aboutMeWidgets() {
  return const [
    LeftAboutMeText(),
    RightAboutMeImages(),
  ];
}
