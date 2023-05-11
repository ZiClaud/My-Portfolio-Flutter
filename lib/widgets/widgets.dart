import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';

/// WIDGETS

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
            borderRadius: BorderRadius.circular(100 * fem),
            color: buttonColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0 * fem, horizontal: 16.0 * fem),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.text, style: buttonTextLight(color: neutral1Color)),
                Padding(padding: EdgeInsets.only(left: 8.0 * fem * fem)),
                const ArrowRightImg(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
            color: isHovering ? primaryColor : neutral1Color,
          ),
        ),
      ),
    );
  }
}

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
    return (inHeight)
        ? SizedBox(
            height: 32 * fem,
          )
        : (inWidth)
            ? SizedBox(
                width: 32 * fem,
              )
            : SizedBox(
                height: 32 * fem,
                width: 32 * fem,
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
