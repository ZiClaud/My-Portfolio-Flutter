import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';

import '../theme/container.dart';

// TODO: Figure out why this gets bugged when resizing the window

Widget getWorkPage() {
  return sectionContainer(_workWidgets());
  /*
  TODO: REMOVE

  return Container(
    // carddML (39:631)
    padding: EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 16 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.circular(5 * fem),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _iremi,
        _jeiom,
      ],
    ),
  );
  */
}

List<Widget> _workWidgets() {
  List<Widget> stuff = [];
  stuff.add(_iremi);
  stuff.add(_jeiom);

  return stuff;
}

Widget _iremi = container1(
  image: jeiomImg,//invisibleWorkImg,
  title: "Iremi App",
  description:
      "I've created an app, that helps the user to find some breathing exercises and ",
  descriptionBold: "it's amazing\n\n",
  category: "Mobile App",
  link: "link",
);

Widget _jeiom = container2(
  image: jeiomImg,
  title: "JEIOM App",
  description: "App created in occasion of the event ",
  descriptionBold: " JEIOM 2023\n\n\n",
  category: "Mobile App",
  link: "link",
);
