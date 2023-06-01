import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/molecules/responsive/responsive.dart';
import 'package:my_portfolio/utils/utils.dart';

/// Responsive box

class ResponsiveHero extends StatelessWidget {
  final List<Widget> children;

  const ResponsiveHero({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: defaultPadding(context, top: 24, bottom: 57),
      width: double.infinity,
      height: ResponsiveWidget.isMobile(context)
          ? MediaQuery.of(context).size.height
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (Widget child in children) child,
        ],
      ),
    );
  }
}
