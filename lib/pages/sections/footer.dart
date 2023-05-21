import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/utils.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: SectionContainerFill(sectionContainerRow(...))?
    return _SectionContainerRowFooter(height: 425, children: _footerWidgets());
  }
}

class _SectionContainerRowFooter extends StatelessWidget {
  final List<Widget> children;
  final double height;

  const _SectionContainerRowFooter({
    required this.children,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Container(
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
      ),
      mobile: Container(
        padding: defaultPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (Widget child in children.reversed) child,
          ],
        ),
      ),
    );
  }
}

List<Widget> _footerWidgets() {
  return [
    const _ContactImages(squareSize: 350),
    const _ContactText(squareSize: 350),
  ];
}

class _ContactImages extends StatelessWidget {
  final double squareSize;

  const _ContactImages({required this.squareSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: squareSize,
      height: squareSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 51,
            top: 44,
            child: _gitHub,
          ),
          Positioned(
            left: 199,
            top: 116,
            child: _linkedin,
          ),
          Positioned(
            left: 85,
            top: 226,
            child: _mail,
          ),
        ],
      ),
    );
  }
}

// TODO: Change/Fix
Widget _gitHub = SizedBox(
  width: 100,
  height: 100,
  child: FooterImg(
    path: "../assets/images/github_img.png",
    onPressed: () {
      launchMyUrl('https://github.com/ZiClaud');
    },
  ),
);

Widget _linkedin = SizedBox(
  width: 100,
  height: 100,
  child: FooterImg(
    path: "../assets/images/linkedin_img.png",
    onPressed: () {
      launchMyUrl('https://www.linkedin.com/in/claudio-di-maio/');
    },
  ),
);

Widget _mail = SizedBox(
  width: 100,
  height: 100,
  child: FooterImg(
    path: "../assets/images/mail_img.png",
    onPressed: () {
      try {
        sendEmail("claudiodimaiozc@gmail.com");
      } catch (e) {
        //TODO: showDialog
      }
    },
  ),
);

class _ContactText extends StatelessWidget {
  final double squareSize;

  const _ContactText({required this.squareSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: squareSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Get ',
                  style: h1Light(color: neutral2Color),
                ),
                TextSpan(
                  text: 'in Touch.',
                  style: h1Bold(color: neutral1Color),
                ),
              ],
            ),
          ),
          Text(
            'So that we can start working together!',
            textAlign: TextAlign.center,
            style: body1TextLight(color: neutral1Color),
          ),
        ],
      ),
    );
  }
}
