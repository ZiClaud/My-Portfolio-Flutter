import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/container.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget getWorkPage() {
  return sectionContainerColumn(_workWidgets());
}

List<Widget> _workWidgets() {
  return [
    titleBox(title1: 'My best ', title2: 'Works'),
    _iremi(),
    spaceBetween(),
    _jeiom(),
    spaceBetween(),
  ];
}

Widget _iremi() {
  return workContainerImageText(
    image: iremiImg,
    //invisibleWorkImg,
    title: "Iremi App",
    description:
        "I developed this app entirely on my own, and it offers users a range of breathing exercises that are specifically designed to ",
    descriptionBold: "promote relaxation and mindfulness.\n",
    category: "Mobile App",
    link: "link",
  );
}

Widget _jeiom() {
  return workContainerTextImage(
    image: jeiomImg,
    title: "JEIOM App",
    description: "I was part of a team that developed this app for the JEIOM 2023 event. Our goal was to create a platform that would enable users to ",
    descriptionBold: "organize their schedules for the event in a single, user-friendly interface.",
    category: "Mobile App",
    link: "link",
  );
}
