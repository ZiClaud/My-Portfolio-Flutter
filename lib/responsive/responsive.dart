import 'package:flutter/material.dart';

// TODO: Use on widgets that need to be responsive
class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  // Screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 576;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 576;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 576) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
