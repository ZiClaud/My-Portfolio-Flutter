import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/icons.dart';
import 'package:my_portfolio/atomic/atoms/padding.dart';
import 'package:my_portfolio/atomic/atoms/responsive.dart';
import 'package:my_portfolio/atomic/molecules/button/clickable_text.dart';
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
      text: tr("skills"),
      onPressed: () => {
        scrollToItem(1),
      },
    ),
    HoveringText(
      text: tr("works"),
      onPressed: () => {
        scrollToItem(2),
      },
    ),
    HoveringText(
      text: tr("about"),
      onPressed: () => {
        scrollToItem(3),
      },
    ),
    HoveringText(
      text: tr("contact"),
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
          ElevatedButton(
            onPressed: () {
              if (context.locale == const Locale('en', 'US')) {
                context.setLocale(const Locale('it', 'IT'));
              } else {
                context.setLocale(const Locale('en', 'US'));
              }
            },
            child: Text(tr('switch_locale')),
          ),
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
