import 'package:flutter/material.dart';

/// SKILLS
class SkillImg extends StatefulWidget {
  final String path;

  const SkillImg({super.key, required this.path});

  @override
  State<SkillImg> createState() => _SkillImgState();
}

class _SkillImgState extends State<SkillImg> {
  Color? color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          color = null;
        });
      },
      onExit: (_) {
        setState(() {
          color = Colors.white;
        });
      },
      child: Image(
        image: AssetImage(widget.path),
        fit: BoxFit.cover,
        color: color,
      ),
    );
  }
}
