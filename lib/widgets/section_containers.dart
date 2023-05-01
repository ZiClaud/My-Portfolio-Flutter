import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

/// Section containers
Widget sectionContainerColumn(List<Widget> widgets) {
  return Container(
    padding: EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
    // TODO: Change with defaultPadding();
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: backgroundColorGradient,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (Widget widget in widgets) widget,
      ],
    ),
  );
}

Widget sectionContainerRow(List<Widget> widgets,
    {bool isAboutMe = false, bool isFooter = false}) {
  // TODO: Improve this part of the code
  if (isAboutMe) {
    return _sectionContainerRow(widgets, 996);
  } else if (isFooter) {
    return _sectionContainerRow(widgets, 425);
  } else {
    return _sectionContainerRow(widgets, 996);
  }
}

Widget _sectionContainerRow(List<Widget> widgets, double height) {
  return Container(
    padding: EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
    width: double.infinity,
    height: height * fem,
    decoration: const BoxDecoration(gradient: backgroundColorGradient),
    child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (Widget widget in widgets) widget,
        ],
      ),
    ),
  );
}
