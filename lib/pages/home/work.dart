import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/utils/utils.dart';
import 'package:my_portfolio/widgets/section_containers.dart';
import 'package:my_portfolio/widgets/widgets.dart';
import 'package:my_portfolio/widgets/work_section_containers.dart';

const WorkImg _iremiImg = WorkImg(url: "https://i.imgur.com/eoEx6Tth.png?1");
const WorkImg _jeiomImg = WorkImg(url: "https://i.imgur.com/nu9WG4d.png");
const WorkImg _websiteImg = WorkImg(url: "https://i.imgur.com/5yosKhp.png");

Widget getWorkPage() {
  return SectionContainerColumn(widgets: _workWidgets());
}

List<Widget> _workWidgets() {
  return [
    const TitleBox(title1: 'My best ', title2: 'Works'),
    _iremi,
    const SpaceWidgets(inHeight: true),
    _jeiom,
    const SpaceWidgets(inHeight: true),
    _website,
    const SpaceWidgets(inHeight: true),
  ];
}

const Widget _iremi = WorkContainerImageText(
  title: "Iremi App",
  description:
      "I developed this app entirely on my own, and it offers users a range of breathing exercises that are specifically designed to ",
  descriptionBold: "promote relaxation and mindfulness.",
  category: "Mobile App",
  pageRoute: '/iremi',
  child: _iremiImg,
);

const Widget _jeiom = WorkContainerTextImage(
  title: "JEIOM App",
  description:
      "I was part of a team that developed this app for the JEIOM 2023 event. Our goal was to create a platform that would enable users to ",
  descriptionBold:
      "organize their schedules for the event in a single, user-friendly interface.",
  category: "Mobile App",
  pageRoute: '/jeiom',
  child: _jeiomImg,
);

Widget _website = WorkContainerImageText(
  title: "This website",
  description: "This website was developed by me using ",
  descriptionBold: "Flutter and Dart.",
  category: "Website",
  child: UnconstrainedBox(
    child: Container(
      decoration: getContainerDecorationBorder(),
      width: 600 * fem,
      height: 325 * fem,
      child: _websiteImg,
    ),
  ),
);
