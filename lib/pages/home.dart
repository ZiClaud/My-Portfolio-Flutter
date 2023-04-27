import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

Widget getHomePage() {
  return Container(
    // homeHaA (77:258)
    padding:
        const EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: backgroundColorGradient,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // headerQoC (132:214)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 244 * fem),
          padding:
              const EdgeInsets.fromLTRB(0 * fem, 9 * fem, 0 * fem, 7.5 * fem),
          width: double.infinity,
          height: 48 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // logo7Si (I132:214;10:1132)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 921.8 * fem, 1.5 * fem),
                width: 95.2 * fem,
                height: 28 * fem,
                child: Image.network(
                  "[Image url]",
                  width: 95.2 * fem,
                  height: 28 * fem,
                ),
              ),
              SizedBox(
                // navitemsbcn (I132:214;10:1122)
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      // listitemdefaultJn6 (I132:214;10:1123)
                      height: double.infinity,
                      child: Text(
                        'HOME',
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 32 * fem,
                    ),
                    TextButton(
                      // listitemdefaultiqp (I132:214;10:1124)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        height: double.infinity,
                        child: Text(
                          'WORK',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: neutral1Color,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 32 * fem,
                    ),
                    TextButton(
                      // listitemdefault14E (I132:214;10:1125)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        height: double.infinity,
                        child: Text(
                          'ABOUT',
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: neutral1Color,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          // claudiodimaiosoftwaredeveloper (132:216)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 249 * fem),
          constraints: const BoxConstraints(
            maxWidth: 493 * fem,
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: SafeGoogleFont(
                'Work Sans',
                fontSize: 56 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.5 * ffem / fem,
                letterSpacing: -1.12 * fem,
                color: neutral1Color,
              ),
              children: [
                TextSpan(
                  text: 'Claudio Di Maio\n',
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 56 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    letterSpacing: -1.12 * fem,
                    color: neutral1Color,
                  ),
                ),
                TextSpan(
                  text: 'Software Developer',
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 56 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * ffem / fem,
                    letterSpacing: -1.12 * fem,
                    color: neutral2Color,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          // iconchevrondownKWA (132:217)
          width: 20 * fem,
          height: 10 * fem,
          child: Image.network(
            "[Image url]",
            width: 20 * fem,
            height: 10 * fem,
          ),
        ),
      ],
    ),
  );
}

Widget getHomePageNoHeader() {
  return Container(
    // homeHaA (77:258)
    padding:
        const EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: backgroundColorGradient,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // claudiodimaiosoftwaredeveloper (132:216)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 249 * fem),
          constraints: const BoxConstraints(
            maxWidth: 493 * fem,
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: SafeGoogleFont(
                'Work Sans',
                fontSize: 56 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.5 * ffem / fem,
                letterSpacing: -1.12 * fem,
                color: neutral1Color,
              ),
              children: [
                TextSpan(
                  text: 'Claudio Di Maio\n',
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 56 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.5 * ffem / fem,
                    letterSpacing: -1.12 * fem,
                    color: neutral1Color,
                  ),
                ),
                TextSpan(
                  text: 'Software Developer',
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 56 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.5 * ffem / fem,
                    letterSpacing: -1.12 * fem,
                    color: neutral2Color,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          // iconchevrondownKWA (132:217)
          width: 20 * fem,
          height: 10 * fem,
          child: Image.network(
            "[Image url]",
            width: 20 * fem,
            height: 10 * fem,
          ),
        ),
      ],
    ),
  );
}
