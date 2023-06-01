/*
//TODO: REMOVE?
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/utils.dart';

/// Section containers
class _MainSectionContainer extends StatelessWidget {
  final Widget widget;

  const _MainSectionContainer({required this.widget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: widget,
    );
  }
}

class _SectionContainerFill extends StatelessWidget {
  final Widget child;

  const _SectionContainerFill({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      child: child,
    );
  }
}

class SectionContainerColumn extends StatelessWidget {
  final List<Widget> children;

  const SectionContainerColumn({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: defaultPadding(context, top: 24, bottom: 57),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (Widget child in children) child,
        ],
      ),
    );
  }
}

class _SectionContainerRow extends StatelessWidget {
  final List<Widget> children;
  final double height;

  const _SectionContainerRow({
    required this.children,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: defaultPadding(context),
      width: double.infinity,
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (Widget child in children) child,
        ],
      ),
    );
  }
}
*/
