import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/data/images.dart';

class InvisibleImage extends StatelessWidget {
  const InvisibleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(invisiblePath),
      fit: BoxFit.cover,
    );
  }
}

Image getSemiInvisibleImage() {
  return const Image(
    image: AssetImage(semiInvisiblePath),
    fit: BoxFit.cover,
  );
}

/// Other icons - arrows and logos
class LogoImage extends StatelessWidget {
  final double width;
  final double height;

  const LogoImage({Key? key, this.width = 48, this.height = 48})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: const Image(
        image: AssetImage(logoPath),
        fit: BoxFit.contain,
      ),
    );
  }
}

class ArrowDownImage extends StatelessWidget {
  const ArrowDownImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      arrowDown,
      width: 50,
      height: 50,
    );
  }
}

class ArrowRightImg extends StatelessWidget {
  const ArrowRightImg({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      arrowRight,
      width: 20,
      height: 20,
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
