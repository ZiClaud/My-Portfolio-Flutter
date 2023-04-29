import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/container.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget getAboutMePage() {
  return sectionContainerRow(_aboutMeWidgets(), isAboutMe: true);
}

List<Widget> _aboutMeWidgets() {
  return [
    _leftAboutMe(),
    _rightImages(),
  ];
}

Widget _leftAboutMe() {
  return Container(
    // titledescriptionhVU (77:364)
    margin: EdgeInsets.fromLTRB(0 * fem, 244.5 * fem, 73 * fem, 244.5 * fem),
    height: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // projecttitleEEW (77:365)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
          child: Text(
            'A BIT ABOUT ME',
            style: h4Bold(color: neutral1Color),
          ),
        ),
        Container(
          // descriptioniQa (77:366)
          constraints: BoxConstraints(
            maxWidth: 557 * fem,
          ),
          child: RichText(
            text: TextSpan(
              style: h3LightBig(color: whiteColor),
              children: [
                TextSpan(
                  text:
                      'As a software developer, I am driven to create digital experiences that are both ',
                  style: h3Light(color: neutral2Color),
                ),
                TextSpan(
                  text:
                      'visually striking and intuitive to navigate. ',
                  style: h3Bold(color: neutral1Color),
                ),
                TextSpan(
                  text:
                      'Besides programming, I am also deeply interested in music, design, and chess.',
                  style: h3Light(color: neutral2Color),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _rightImages() {
  return SizedBox(
    // horizontalGcS (77:367)
    height: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // coverE3U (77:368)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 32 * fem, 0 * fem),
          width: 282 * fem,
          height: 374 * fem,
          child: aboutMe1Img,
        ),
        SizedBox(
          // verticalvS6 (77:369)
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // covers6S (77:370)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32 * fem),
                width: 282 * fem,
                height: 374 * fem,
                child: aboutMe2Img,
              ),
              SizedBox(
                // coveryvA (77:371)
                width: 282 * fem,
                height: 374 * fem,
                child: aboutMe3Img,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
