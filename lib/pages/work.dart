import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/container.dart';
import 'package:my_portfolio/theme/icons.dart';

Widget getWorkPage() {
  return sectionContainerColumn(_workWidgets());
}

List<Widget> _workWidgets() {
  return [
    _iremi(),
    _jeiom(),
  ];
}

Widget _iremi() {
  return container1(
    image: iremiImg,
    //invisibleWorkImg,
    title: "Iremi App",
    description:
        "I've created an app, that helps the user to find some breathing exercises and ",
    descriptionBold: "it's amazing\n\n",
    category: "Mobile App",
    link: "link",
  );
}

Widget _jeiom() {
  return container2(
    image: jeiomImg,
    title: "JEIOM App",
    description: "App created in occasion of the event ",
    descriptionBold: " JEIOM 2023\n\n\n",
    category: "Mobile App",
    link: "link",
  );
}
