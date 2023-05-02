import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';

/// WIDGETS

/// Button
class MyButton extends StatefulWidget {
  final String text;
  final Function() onPressed;

  const MyButton({super.key, required this.text, required this.onPressed});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  Color buttonColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          buttonColor = primaryColor;
        });
      },
      onExit: (_) {
        setState(() {
          buttonColor = Colors.transparent;
        });
      },
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: neutral2Color),
            borderRadius: BorderRadius.circular(100 * fem),
            color: buttonColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0 * fem, horizontal: 16.0 * fem),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.text, style: buttonTextLight(color: neutral1Color)),
                Padding(padding: EdgeInsets.only(left: 8.0 * fem * fem)),
                const ArrowRightImg(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Clickable text that changes color on hover, clickable
class HoveringText extends StatefulWidget {
  final String text;
  final void Function() onPressed;

  const HoveringText({super.key, required this.text, required this.onPressed});

  @override
  State<HoveringText> createState() => _HoveringTextState();
}

class _HoveringTextState extends State<HoveringText> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
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
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          widget.text,
          style: label(
            color: isHovering ? primaryColor : neutral1Color,
          ),
        ),
      ),
    );
  }
}

/// Space between sections/containers
class SpaceWidgets extends StatelessWidget {
  final bool inHeight;
  final bool inWidth;

  const SpaceWidgets({
    super.key,
    this.inHeight = false,
    this.inWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return (inHeight)
        ? SizedBox(
            height: 32 * fem,
          )
        : (inWidth)
            ? SizedBox(
                width: 32 * fem,
              )
            : SizedBox(
                height: 32 * fem,
                width: 32 * fem,
              );
  }
}
