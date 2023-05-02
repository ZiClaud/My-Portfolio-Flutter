import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/widgets/section_containers.dart';
import 'package:my_portfolio/widgets/widgets.dart';
import 'package:my_portfolio/widgets/work_containers.dart';

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
  ];
}

const Widget _iremi = WorkContainerImageText(
  image: iremiImg,
  title: "Iremi App",
  description:
      "I developed this app entirely on my own, and it offers users a range of breathing exercises that are specifically designed to ",
  descriptionBold: "promote relaxation and mindfulness.",
  category: "Mobile App",
  link: "link",
);

const Widget _jeiom = WorkContainerTextImage(
  image: jeiomImg,
  title: "JEIOM App",
  description:
      "I was part of a team that developed this app for the JEIOM 2023 event. Our goal was to create a platform that would enable users to ",
  descriptionBold:
      "organize their schedules for the event in a single, user-friendly interface.",
  category: "Mobile App",
  link: "link",
);
