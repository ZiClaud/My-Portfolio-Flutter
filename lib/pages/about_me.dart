import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

Widget getAboutMePage() {
  return Container(
    // aboutmeRW2 (77:362)
    padding:  EdgeInsets.fromLTRB(
        107 * fem, 107.5 * fem, 107 * fem, 107.5 * fem),
    width: double.infinity,
    height: 996 * fem,
    decoration:  BoxDecoration(gradient: backgroundColorGradient),
    child: SizedBox(
      // wrapperMgW (77:363)
      width: double.infinity,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // titledescriptionhVU (77:364)
            margin:  EdgeInsets.fromLTRB(
                0 * fem, 244.5 * fem, 73 * fem, 244.5 * fem),
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // projecttitleEEW (77:365)
                  margin:  EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 16 * fem),
                  child: Text(
                    'A BIT ABOUT ME',
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 24 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      letterSpacing: 1.44 * fem,
                      color: neutral1Color,
                    ),
                  ),
                ),
                Container(
                  // descriptioniQa (77:366)
                  constraints:  BoxConstraints(
                    maxWidth: 557 * fem,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: whiteColor,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'I am a software developer who is passionate about creating ',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            color: neutral2Color,
                          ),
                        ),
                        TextSpan(
                          text:
                              'beautiful and joyful digital experiences. Besides programming, I love',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: neutral1Color,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
                        TextSpan(
                          text: 'music, design and travelling. ',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: neutral1Color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            // horizontalGcS (77:367)
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // coverE3U (77:368)
                  margin:  EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 32 * fem, 0 * fem),
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
                        margin:  EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 32 * fem),
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
          ),
        ],
      ),
    ),
  );
}
