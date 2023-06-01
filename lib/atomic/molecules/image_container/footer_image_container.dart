import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';

/// Footer Icons
class FooterImg extends StatefulWidget {
  final String path;
  final void Function() onPressed;

  const FooterImg({super.key, required this.path, required this.onPressed});

  @override
  State<FooterImg> createState() => _FooterImgState();
}

class _FooterImgState extends State<FooterImg> {
  Color color = neutral1Color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            color = primaryColor;
          });
        },
        onExit: (_) {
          setState(() {
            color = neutral1Color;
          });
        },
        child: TextButton(
          onPressed: widget.onPressed,
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Image(
            image: AssetImage(widget.path),
            fit: BoxFit.cover,
            color: color,
          ),
        ),
      ),
    );
  }
}
