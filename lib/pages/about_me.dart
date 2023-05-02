import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/widgets/about_containers.dart';
import 'package:my_portfolio/widgets/section_containers.dart';

Widget getAboutMePage() {
  return sectionContainerRow(_aboutMeWidgets(), isAboutMe: true);
}

List<Widget> _aboutMeWidgets() {
  return [
//    getAboutMePage2(),
    leftAboutMeText(),
    rightAboutMeImages(),
  ];
}

Widget aboutMeDesignImg = aboutMeImageUrl(
    url:
        "https://assets.telegraphindia.com/telegraph/2022/Feb/1644870612_design.jpg");
Widget aboutMeChessImg = aboutMeImageUrl(
    url:
        "https://media.cnn.com/api/v1/images/stellar/prod/230104173032-02-chess-stock.jpg?c=original");
Widget aboutMeMusicImg =
    aboutMeImageUrl(url: "https://cdn.fuelrocks.com/1665122987550.jpg");
