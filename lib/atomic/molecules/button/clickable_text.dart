import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';

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
            context,
            color: isHovering ? primaryColor : neutral1Color,
          ),
        ),
      ),
    );
  }
}
