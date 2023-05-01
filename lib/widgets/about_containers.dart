import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget leftAboutMeText() {
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 244.5 * fem, 73 * fem, 244.5 * fem),
    height: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
          child: Text(
            'A BIT ABOUT ME',
            style: h4Bold(color: neutral1Color),
          ),
        ),
        Container(
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
                  'Besides programming, I am also deeply interested in design, music, and chess.',
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

Widget rightAboutMeImages() {
  return SizedBox(
    height: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 32 * fem, 0 * fem),
          width: 282 * fem,
          height: 374 * fem,
          child: aboutMeMusicImg,
        ),
        SizedBox(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32 * fem),
                width: 282 * fem,
                height: 374 * fem,
                child: aboutMeDesignImg,
              ),
              SizedBox(
                width: 282 * fem,
                height: 374 * fem,
                child: aboutMeChessImg,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
