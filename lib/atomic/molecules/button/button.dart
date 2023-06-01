import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/icons/icons.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';

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
            borderRadius: BorderRadius.circular(100),
            color: buttonColor,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.text,
                    style: buttonTextLight(context, color: neutral1Color)),
                const Padding(padding: EdgeInsets.only(left: 8.0)),
                const ArrowRightImg(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
