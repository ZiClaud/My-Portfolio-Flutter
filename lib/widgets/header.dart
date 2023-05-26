import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/utils/navigation.dart';
import 'package:my_portfolio/widgets/widgets.dart';

class TheHeader extends StatelessWidget {
  const TheHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        mobile: _MobileHeader(), desktop: _DesktopHeader());
  }
}

List<Widget> _menu() {
  return [
    HoveringText(
      text: "SKILLS",
      onPressed: () => {
        scrollToItem(1),
      },
    ),
    HoveringText(
      text: "WORKS",
      onPressed: () => {
        scrollToItem(2),
      },
    ),
    HoveringText(
      text: "ABOUT",
      onPressed: () => {
        scrollToItem(3),
      },
    ),
    HoveringText(
      text: "CONTACT",
      onPressed: () => {
        scrollToItem(4),
      },
    ),
  ];
}

List<Widget> _menuDesktop() {
  List<Widget> ris = [];
  for (final item in _menu()) {
    ris.add(item);
    ris.add(const SpaceWidgets(inWidth: true));
  }
  return ris;
}

List<Widget> _mobileMenu() {
  return [
    const LogoImage(),
    const Spacer(),
    SizedBox(
      width: 48,
      height: 48,
      child: PopupMenuButton<Widget>(
        icon: const Icon(
          Icons.menu,
          color: neutral1Color,
        ),
        color: backgroundColor,
        itemBuilder: (BuildContext context) => <PopupMenuEntry<Widget>>[
          for (final item in _menu())
            PopupMenuItem<Widget>(
              onTap: () => {
                //TODO: Make the popup disappear
              },
              child: item,
            ),
        ],
      ),
    ),
  ];
}

class _MobileHeader extends StatelessWidget {
  const _MobileHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _mobileMenu(),
    );
  }
}

class _DesktopHeader extends StatelessWidget {
  const _DesktopHeader();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LogoImage(),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _menuDesktop(),
          ),
        ],
      ),
    );
  }
}
