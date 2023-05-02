import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/utils/media_query.dart';

/// Section containers
class SectionContainerFill extends StatelessWidget {
  final Widget widget;

  const SectionContainerFill({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: getScreenHeight()),
      child: widget,
    );
  }
}

class SectionContainerColumn extends StatelessWidget {
  final List<Widget> widgets;

  const SectionContainerColumn({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
      // TODO: Change with defaultPadding();
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (Widget widget in widgets) widget,
        ],
      ),
    );
  }
}

Widget sectionContainerRow(List<Widget> widgets,
    {bool isAboutMe = false, bool isFooter = false}) {
  // TODO: Improve this part of the code
  if (isAboutMe) {
    return SectionContainerRow(widgets: widgets, height: 996);
  } else if (isFooter) {
    return SectionContainerRow(widgets: widgets, height: 425);
  } else {
    return SectionContainerRow(widgets: widgets, height: 996);
  }
}

class SectionContainerRow extends StatelessWidget {
  final List<Widget> widgets;
  final double height;

  const SectionContainerRow({
    super.key,
    required this.widgets,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(112 * fem, 0 * fem, 112 * fem, 0 * fem),
      width: double.infinity,
      height: height * fem,
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
}
