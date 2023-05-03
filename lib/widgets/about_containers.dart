import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';

import '../pages/home/about_me.dart';

class LeftAboutMeText extends StatelessWidget {
  const LeftAboutMeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600 * fem,
      height: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(bottom: 150.0 * fem),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0 * fem),
              child: Text(
                'A BIT ABOUT ME',
                style: h4Bold(color: neutral1Color),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 16.0 * fem)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0 * fem),
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
                      text: 'visually striking and intuitive to navigate. ',
                      style: h3Bold(color: neutral1Color),
                    ),
                    TextSpan(
                      text:
                          'Besides programming, I am also deeply interested in ',
                      style: h3Light(color: neutral2Color),
                    ),
                    TextSpan(
                      text: 'design, music, and chess.',
                      style: h3Bold(color: neutral1Color),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RightAboutMeImages extends StatelessWidget {
  const RightAboutMeImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600 * fem,
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
}
