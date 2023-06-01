import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/icons.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';

/// WIDGETS

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
    return (inHeight && !inWidth)
        ? const SizedBox(
            height: 32,
          )
        : (inWidth && !inHeight)
            ? const SizedBox(
                width: 32,
              )
            : const SizedBox(
                height: 32,
                width: 32,
              );
  }
}

/// Returns an [Image] widget that loads a high-resolution image from the network,
/// while initially displaying a low-resolution placeholder image.
///
/// [lowResImageURL] is the URL for the low-resolution placeholder image.
/// [highResImageURL] is the URL for the high-resolution image to be loaded.
/// [width] and [height] are the dimensions for the image widget.
/// [fit] is the fit type for the image widget.
class HighDefinitionImage extends StatelessWidget {
  final String highResImageURL;
  final String? lowResImageURL;
  final double width;
  final double height;
  final BoxFit fit;

  const HighDefinitionImage({
    super.key,
    required this.highResImageURL,
    this.lowResImageURL,
    required this.width,
    required this.height,
    required this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return (lowResImageURL != null)
              ? Image.network(lowResImageURL!)
              : getSemiInvisibleImage();
        }
      },
      image: NetworkImage(highResImageURL),
      width: width,
      height: height,
      fit: fit,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Center(
          child: TitleBox(
            title1: "Error 404:\n",
            title2: "image not found",
            center: true,
          ),
        );
      },
    );
  }
}
