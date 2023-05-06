import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/media_query.dart';

/// Section containers
class _MainSectionContainer extends StatelessWidget {
  final Widget widget;

  const _MainSectionContainer({required this.widget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: widget,
    );
  }
}

class _SectionContainerFill extends StatelessWidget {
  final Widget widget;

  const _SectionContainerFill({required this.widget});

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
  assert (isAboutMe != isFooter);
  // TODO: Improve this part of the code
  if (isAboutMe) {
    return SectionContainerRow(widgets: widgets, height: 800);
  } else if (isFooter) {
    return SectionContainerRow(widgets: widgets, height: 425);
  } else {
    return SectionContainerRow(widgets: widgets, height: 800);
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (Widget widget in widgets) widget,
          ],
      ),
    );
  }
}
