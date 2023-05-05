import 'package:flutter/material.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/widgets/section_containers.dart';
import 'package:my_portfolio/widgets/widgets.dart';

Widget getHomePage() {
  return SectionContainerColumn(widgets: _homePageWidgets());
}

List<Widget> _homePageWidgets() {
  return const [
    _HeaderWidget(),
    _TitleAndJobWidget(),
    _ArrowDownWidget(),
  ];
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48 * fem,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 48 * fem,
            height: 48 * fem,
            child: const LogoImage(),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HoveringText(
                  text: "SKILLS",
                  onPressed: () => {
                        scrollToItem(1),
                      }),
              const SpaceWidgets(inWidth: true),
              HoveringText(
                  text: "WORKS",
                  onPressed: () => {
                        scrollToItem(2),
                      }),
              const SpaceWidgets(inWidth: true),
              HoveringText(
                  text: "ABOUT",
                  onPressed: () => {
                        scrollToItem(3),
                      }),
              const SpaceWidgets(inWidth: true),
              HoveringText(
                  text: "CONTACT",
                  onPressed: () => {
                        scrollToItem(4),
                      }),
            ],
          ),
        ],
      ),
    );
  }
}

class _TitleAndJobWidget extends StatelessWidget {
  const _TitleAndJobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 249 * fem, 0 * fem, 249 * fem),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Claudio Di Maio\n',
              style: h1Bold(color: neutral1Color),
            ),
            TextSpan(
              text: 'Software Developer',
              style: h1Light(color: neutral2Color),
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
    return SizedBox(
      width: 20 * fem,
      height: 10 * fem,
      child: const ArrowDownImage(),
    );
  }
}
