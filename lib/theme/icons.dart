import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/utils/utils.dart';

import 'colors.dart';

/// Testing
const String _invisiblePath = "../assets/images/invisible.png";
const String _semiInvisiblePath = "../assets/images/semi_invisible.png";

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

/// WORKS
class WorkImg extends StatelessWidget {
  final String? path;
  final String? url;

  const WorkImg({super.key, this.path, this.url})
      : assert(path != null || url != null);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: getContainerRadius(),
      child: path != null
          ? Image(
              image: AssetImage(path!),
              width: 591 * fem,
              height: 500 * fem,
              fit: BoxFit.cover,
            )
          : Image.network(
              url!,
              width: 591 * fem,
              height: 500 * fem,
              fit: BoxFit.cover,
            ),
    );
  }
}

/// About me section
class AboutMeImage extends StatelessWidget {
  final String? path;
  final String? url;

  const AboutMeImage({super.key, this.path, this.url})
      : assert(path != null || url != null);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: getContainerRadius(),
      child: path != null
          ? Image(
              image: AssetImage(path!),
              width: 282 * fem,
              height: 374 * fem,
              fit: BoxFit.cover,
            )
          : Image.network(
              url!,
              width: 282 * fem,
              height: 374 * fem,
              fit: BoxFit.cover,
            ),
    );
  }
}

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
    return MouseRegion(
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
    );
  }
}

/// Other icons - arrows and logos
class LogoImage extends StatefulWidget {
  const LogoImage({Key? key}) : super(key: key);

  @override
  State<LogoImage> createState() => _LogoImageState();
}

class _LogoImageState extends State<LogoImage> {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("../assets/images/ZC_Logo_white.png"),
      fit: BoxFit.contain,
    );
  }
}

class ArrowDownImage extends StatelessWidget {
  const ArrowDownImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://cdn-icons-png.flaticon.com/512/5093/5093064.png",
      width: 20 * fem,
      height: 10 * fem,
      color: Colors.white,
    );
  }
}

class ArrowRightImg extends StatelessWidget {
  const ArrowRightImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://cdn.iconscout.com/icon/free/png-256/right-arrow-1780566-1514442.png",
      width: 13 * fem,
      height: 20 * fem,
      color: Colors.white,
      alignment: Alignment.center,
      fit: BoxFit.cover,
    );
  }
}

class ArrowLeftImg extends StatelessWidget {
  const ArrowLeftImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      alignment: Alignment.center,
      scale: -1.0,
      child: const ArrowRightImg(),
    );
  }
}
