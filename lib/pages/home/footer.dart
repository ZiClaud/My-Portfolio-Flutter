import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/utils/utils.dart';
import 'package:my_portfolio/widgets/section_containers.dart';

Widget _gitHubImg({required Function() onPressed}) {
  String path = "../assets/images/github_img.png";
  return FooterImg(path: path, onPressed: onPressed);
}

Widget _mailImg({required Function() onPressed}) {
  String path = "../assets/images/mail_img.png";
  return FooterImg(path: path, onPressed: onPressed);
}

Widget _linkedinImg({required Function() onPressed}) {
  String path = "../assets/images/linkedin_img.png";
  return FooterImg(path: path, onPressed: onPressed);
}

Widget getFooterPage() {
  return sectionContainerRow(_footerWidgets(), isFooter: true);
}

List<Widget> _footerWidgets() {
  return [
    const _LeftImages(squareSize: 350),
    const _RightText(squareSize: 350),
  ];
}

class _LeftImages extends StatelessWidget {
  final double squareSize;

  const _LeftImages({required this.squareSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: squareSize * fem,
      height: squareSize * fem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            /// Position of mail
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 42 * fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  /// Position of Github
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 93 * fem, 83.25 * fem),
                  width: 100 * fem,
                  height: 100 * fem,
                  child: _gitHubImg(
                    onPressed: () {
                      launchMyUrl('https://github.com/ZiClaud');
                    },
                  ),
                ),
                SizedBox(
                  /// Position of Linkedin
                  width: 100 * fem,
                  height: 100 * fem,
                  child: _linkedinImg(
                    onPressed: () {
                      launchMyUrl(
                          'https://www.linkedin.com/in/claudio-di-maio/');
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            /// Position of Mail
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 92 * fem, 0 * fem),
            width: 100 * fem,
            height: 100 * fem,
            child: _mailImg(
              onPressed: () {
                // TODO: Fix
                sendEmail("claudiodimaiozc@gmail.com");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _RightText extends StatelessWidget {
  final double squareSize;

  const _RightText({required this.squareSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: squareSize * fem,
      width: squareSize * fem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: h1Light(color: whiteColor),
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
