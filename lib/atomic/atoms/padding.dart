import 'package:flutter/material.dart';

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
