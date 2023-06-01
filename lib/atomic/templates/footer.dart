import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/atomic/molecules/image_container/footer_image_container.dart';
import 'package:my_portfolio/atomic/molecules/responsive/responsive.dart';
import 'package:my_portfolio/data/images.dart';
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
            child: FooterImg(path: gitHubPath, onPressed: gitHubPressed),
          ),
          Positioned(
            left: 199,
            top: 116,
            child: FooterImg(path: linkedinPath, onPressed: linkedinPressed),
          ),
          Positioned(
            left: 85,
            top: 226,
            child: FooterImg(path: mailPath, onPressed: mailPressed),
          ),
        ],
      ),
    );
  }
}

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
                  style: h1Light(context, color: neutral2Color),
                ),
                TextSpan(
                  text: 'in Touch.',
                  style: h1Bold(context, color: neutral1Color),
                ),
              ],
            ),
          ),
          Text(
            'So that we can start working together!',
            textAlign: TextAlign.center,
            style: body1TextLight(context, color: neutral1Color),
          ),
        ],
      ),
    );
  }
}
