import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';

/// Button
class MyIconButton extends StatefulWidget {
  final IconData icon;
  final Function() onPressed;

  const MyIconButton({super.key, required this.icon, required this.onPressed});

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  Color buttonColor = neutral1Color;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          buttonColor = neutral2Color;
        });
      },
      onExit: (_) {
        setState(() {
          buttonColor = neutral1Color;
        });
      },
      child: IconButton(
        icon: Icon(widget.icon, color: buttonColor),
        onPressed: widget.onPressed,
      ),
    );
  }
}
