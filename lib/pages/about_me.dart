import 'package:flutter/material.dart';
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

