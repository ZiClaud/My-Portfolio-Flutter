import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

Widget getFooterPage() {
  return Container(
    // footerxav (77:378)
    padding: const EdgeInsets.fromLTRB(
        127.5 * fem, 105.1 * fem, 127.5 * fem, 60.9 * fem),
    width: double.infinity,
    height: 571 * fem,
    decoration: const BoxDecoration(gradient: backgroundColorGradient),
    child: SizedBox(
      // contentgvE (146:204)
      width: 1006.5 * fem,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // socialmediaDvA (146:205)
            margin: const EdgeInsets.fromLTRB(
                0 * fem, 0 * fem, 286.5 * fem, 0 * fem),
            padding: const EdgeInsets.fromLTRB(
                37.5 * fem, 37.5 * fem, 37.5 * fem, 47.25 * fem),
            width: 378 * fem,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupad3qXfx (DmffNQqB2QYYnQaAdKAd3Q)
                  margin: const EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 48 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // github55sE2 (146:206)
                        margin: const EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 93 * fem, 83.25 * fem),
                        width: 105 * fem,
                        height: 105 * fem,
                        child: Image.network(
                          "[Image url]",
                          width: 105 * fem,
                          height: 105 * fem,
                        ),
                      ),
                      SizedBox(
                        // linkedin55n66 (146:208)
                        width: 105 * fem,
                        height: 94.5 * fem,
                        child: Image.network(
                          "[Image url]",
                          width: 105 * fem,
                          height: 94.5 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // mail557eA (146:207)
                  margin: const EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 92 * fem, 0 * fem),
                  width: 105 * fem,
                  height: 84 * fem,
                  child: Image.network(
                    "[Image url]",
                    width: 105 * fem,
                    height: 84 * fem,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // titledescriptionqKG (146:209)
            margin: const EdgeInsets.fromLTRB(
                0 * fem, 122.9 * fem, 0 * fem, 167.1 * fem),
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // getintouchh6a (146:211)
                  margin: const EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 4 * fem),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 56 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        letterSpacing: -1.12 * fem,
                        color: whiteColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Get',
                          style: SafeGoogleFont('Work Sans',
                              fontSize: 56 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.5 * ffem / fem,
                              letterSpacing: -1.12 * fem,
                              color: neutral2Color),
                        ),
                        TextSpan(
                          text: ' ',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 56 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            letterSpacing: -1.12 * fem,
                            color: whiteColor,
                          ),
                        ),
                        TextSpan(
                          text: 'in Touch.',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 56 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            letterSpacing: -1.12 * fem,
                            color: neutral1Color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  // descriptionXtE (146:212)
                  'So that we can talk more about...',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * ffem / fem,
                    color: neutral1Color,
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
