import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/utils/navigation.dart';
import 'package:my_portfolio/widgets/widgets.dart';

List<Widget> _menuItems(context) {
  return ResponsiveWidget.isDesktop(context) ? _menuDesktop() : _mobileMenu();
}

List<Widget> _menuDesktop() {
  return [
  HoveringText(
    text: "SKILLS",
    onPressed: () => {
      scrollToItem(1),
    },
  ),
//  const SpaceWidgets(inWidth: true),
  HoveringText(
    text: "WORKS",
    onPressed: () => {
      scrollToItem(2),
    },
  ),
//  const SpaceWidgets(inWidth: true),
  HoveringText(
    text: "ABOUT",
    onPressed: () => {
      scrollToItem(3),
    },
  ),
//  const SpaceWidgets(inWidth: true),
  HoveringText(
    text: "CONTACT",
    onPressed: () => {
      scrollToItem(4),
    },
  ),
];
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
          for (final item in _menuDesktop())
            PopupMenuItem<Widget>(
              child: item,
            ),
        ],
      ),
    ),
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Header(child: SizedBox()),
    );
  }
}

class Header extends StatelessWidget {
  final Widget? child;

  const Header({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const LogoImage(),
            backgroundColor: Colors.transparent,
            actions: _menuItems(context),
          ),
          SliverToBoxAdapter(
            child: child ?? const SizedBox(),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (ResponsiveWidget.isDesktop(context))
        ? const _DesktopHeader()
        : const _MobileHeader();
  }
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
            children: _menuItems(context),
          ),
        ],
      ),
    );
  }
}
