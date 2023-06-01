import 'package:flutter/material.dart';
import 'package:my_portfolio/data/images.dart';

Image getInvisibleImage() {
  return const Image(
    image: AssetImage(invisiblePath),
    fit: BoxFit.cover,
  );
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
        image: AssetImage("../assets/images/ZC_Logo.png"),
        fit: BoxFit.contain,
      ),
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
      width: 20,
      height: 10,
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
      width: 13,
      height: 20,
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
