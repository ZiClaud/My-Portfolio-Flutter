import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// SKILLS
class SkillImg extends StatefulWidget {
  final String path;

  const SkillImg({super.key, required this.path});

  @override
  State<SkillImg> createState() => _SkillImgState();
}

class _SkillImgState extends State<SkillImg> {
  Color? color = const Color(0xFFFFFFFF);

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
          color = const Color(0xFFFFFFFF);
        });
      },
      child: SvgPicture.asset(
        widget.path,
        fit: BoxFit.cover,
        color: color,
        width: 200,
        height: 200,
      ),
    );
  }
}
