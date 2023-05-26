import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/responsive/responsive_hero.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/utils.dart';
import 'package:my_portfolio/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveHero(children: _homePageWidgets());
  }
}

List<Widget> _homePageWidgets() {
  return const [
    TheHeader(),
    _SpacerIfMobile(),
    _TitleAndJobWidget(),
    _SpacerIfMobile(),
    _ArrowDownWidget(),
  ];
}

class _SpacerIfMobile extends StatelessWidget {
  const _SpacerIfMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (ResponsiveWidget.isMobile(context))
        ? const Spacer()
        : const SizedBox();
  }
}

class _TitleAndJobWidget extends StatelessWidget {
  const _TitleAndJobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: defaultPadding(context, horizontal: 0, top: 249, bottom: 249),
      //  TODO: Change and fix for different devices
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Claudio Di Maio\n',
              style: h1Bold(context, color: neutral1Color),
            ),
            TextSpan(
              text: 'Software Developer',
              style: h1Light(context, color: neutral2Color),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArrowDownWidget extends StatelessWidget {
  const _ArrowDownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 20,
      height: 10,
      child: ArrowDownImage(),
    );
  }
}
