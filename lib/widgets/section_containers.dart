import 'package:flutter/material.dart';

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
  final BuildContext context;

  const _SectionContainerFill({required this.child, required this.context});

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
      padding: const EdgeInsets.only(left: 112, top: 24, right: 112, bottom: 57),
      // TODO: Change with defaultPadding();
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

class SectionContainerRow extends StatelessWidget {
  final List<Widget> children;
  final double height;

  const SectionContainerRow({
    super.key,
    required this.children,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 112, right: 112),
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
