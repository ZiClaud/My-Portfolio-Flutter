import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/icons.dart';
import 'package:my_portfolio/atomic/atoms/padding.dart';
import 'package:my_portfolio/atomic/molecules/button/clickable_text.dart';
import 'package:my_portfolio/atomic/molecules/responsive/responsive.dart';
import 'package:my_portfolio/utils/navigation.dart';

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
      height: 48,
      child: DropdownButton<Widget>(
        underline: const SizedBox(),
        dropdownColor: backgroundColor,
        icon: const Icon(
          Icons.menu,
          color: neutral1Color,
        ),
        items: _menu().map((item) {
          return DropdownMenuItem<Widget>(
            value: item,
            child: item,
          );
        }).toList(),
        onChanged: (selectedItem) {
          //TODO: Clean this part of the code
          if (selectedItem is HoveringText) {
            (selectedItem).onPressed();
          } else {
            throw Exception("Not HoveringText");
          }
        },
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
