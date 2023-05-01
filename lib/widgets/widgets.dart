import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

/// WIDGETS

/// Clickable image that changes color when hovered
Widget clickableImage(
    {required Image Function({required bool isHovering}) image,
    required void Function() onPressed}) {
  bool isHovering = false;
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovering = false;
          });
        },
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: image(isHovering: isHovering),
        ),
      );
    },
  );
}

Widget clickableText(
    {required String text, required void Function() onPressed}) {
  bool isHovering = false;
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovering = false;
          });
        },
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text(
            text,
            style: label(
              color: isHovering ? primaryColor : neutral1Color,
            ),
          ),
        ),
      );
    },
  );
}

/// Space between sections/containers
Widget spaceBetween() {
  return SizedBox(
    height: 32 * fem,
    width: 32 * fem,
  );
}
