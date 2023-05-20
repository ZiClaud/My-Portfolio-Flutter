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
  final Widget child;

  const _SectionContainerFill({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: getScreenHeight()),
      child: child,
    );
  }
}

class SectionContainerColumn extends StatelessWidget {
  final List<Widget> children;

  const SectionContainerColumn({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 112 * fem, top: 24 * fem, right: 112 * fem, bottom: 57 * fem),
      // TODO: Change with defaultPadding();
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (Widget child in children) child,
        ],
      ),
    );
  }
}

class SectionContainerRow extends StatelessWidget {
  final List<Widget> children;
  final double height;

  const SectionContainerRow({
    super.key,
    required this.children,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 112 * fem, right: 112 * fem),
      width: double.infinity,
      height: height * fem,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (Widget child in children) child,
        ],
      ),
    );
  }
}
