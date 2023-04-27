import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

Widget getFooterPage() {
  return Container(
    // footerxav (77:378)
    padding:
        EdgeInsets.fromLTRB(127.5 * fem, 100.1 * fem, 127.5 * fem, 60.9 * fem),
    width: double.infinity,
    height: 571 * fem,
    decoration: BoxDecoration(gradient: backgroundColorGradient),
    child: SizedBox(
      // contentgvE (146:204)
      width: 1006.5 * fem,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // socialmediaDvA (146:205)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 286.5 * fem, 0 * fem),
            padding: EdgeInsets.fromLTRB(
                37.5 * fem, 37.5 * fem, 37.5 * fem, 47.25 * fem),
            width: 378 * fem,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupad3qXfx (DmffNQqB2QYYnQaAdKAd3Q)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 42 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // github55sE2 (146:206)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 93 * fem, 83.25 * fem),
                        width: 100 * fem,
                        height: 100 * fem,
                        child: gitHubImg,
                      ),
                      SizedBox(
                        // linkedin55n66 (146:208)
                        width: 100 * fem,
                        height: 100 * fem,
                        child: linkedinImg,
                      ),
                    ],
                  ),
                ),
                Container(
                  // mail557eA (146:207)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 92 * fem, 0 * fem),
                  width: 100 * fem,
                  height: 100 * fem,
                  child: mailImg,
                ),
              ],
            ),
          ),
          Container(
            // titledescriptionqKG (146:209)
            margin:
                EdgeInsets.fromLTRB(0 * fem, 122.9 * fem, 0 * fem, 167.1 * fem),
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // getintouchh6a (146:211)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                  child: RichText(
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
                ),
                Text(
                  // descriptionXtE (146:212)
                  'So that we can start working together!',
                  textAlign: TextAlign.center,
                  style: body1TextLight(color: neutral1Color),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
