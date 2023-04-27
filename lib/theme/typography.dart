import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

/// Light
Text myText(String text, TextStyle textStyle) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: textStyle,
  );
}

TextStyle light({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 56 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    letterSpacing: -1.12 * fem,
    color: color,
  );
}

TextStyle h1Light({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 56 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    letterSpacing: -1.12 * fem,
    color: color,
  );
}

TextStyle h2Light({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 40 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h3Light({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 32 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h4Light({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 24 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    letterSpacing: 1.44 * fem,
    color: color,
  );
}

TextStyle h5Light({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

TextStyle body1TextLight({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 18 * ffem,
    fontWeight: FontWeight.w300,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle buttonTextLight({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w400,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

/// Bold
TextStyle semibold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 56 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: -1.12 * fem,
    color: color,
  );
}

TextStyle h1Bold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 56 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: -1.12 * fem,
    color: color,
  );
}

TextStyle h2Bold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 40 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h3Bold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 32 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle h4Bold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 24 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: 1.44 * fem,
    color: color,
  );
}

TextStyle h5Bold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

TextStyle body1TextBold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 18 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

TextStyle buttonTextBold({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 16 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    letterSpacing: 0.64 * fem,
    color: color,
  );
}

TextStyle label({required Color color}) {
  return SafeGoogleFont(
    'Work Sans',
    fontSize: 14 * ffem,
    fontWeight: FontWeight.w600,
    height: 1.5 * ffem / fem,
    color: color,
  );
}

/*
Widget getTypographyPage() {
  return Container(
    // typographyDwY (54:899)
    padding:
        const EdgeInsets.fromLTRB(59 * fem, 80 * fem, 60.5 * fem, 80 * fem),
    width: double.infinity,
    height: 942 * fem,
    decoration: const BoxDecoration(
      color: Color(0xff000000),
    ),
    child: SizedBox(
      // typographyJi6 (54:900)
      width: double.infinity,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // light4BU (54:901)
            margin:
                const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 80 * fem, 0 * fem),
            width: 123.5 * fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // lightPjY (54:902)
                  margin: const EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 80 * fem),
                  width: double.infinity,
                  child: Text(
                    'Light',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 56 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5 * ffem / fem,
                      letterSpacing: -1.12 * fem,
                      color: whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  // col15cN (54:903)
                  width: 68.5 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // h1QuY (54:904)
                        width: double.infinity,
                        child: Text(
                          'H1',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 56 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            letterSpacing: -1.12 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h2Vg6 (54:905)
                        width: double.infinity,
                        child: Text(
                          'H2',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 40 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h3bUE (54:906)
                        width: double.infinity,
                        child: Text(
                          'H3',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h4WbC (54:907)
                        width: double.infinity,
                        child: Text(
                          'H4',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            letterSpacing: 1.44 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h5EXC (54:908)
                        width: double.infinity,
                        child: Text(
                          'H5',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            letterSpacing: 0.64 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // body1mX8 (54:909)
                        width: double.infinity,
                        child: Text(
                          'Body 1',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // buttonJX4 (54:910)
                        width: double.infinity,
                        child: Text(
                          'BUTTON',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            letterSpacing: 0.64 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            // semibolddZL (54:911)
            width: 251 * fem,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // semiboldyt6 (54:912)
                  margin: const EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 80 * fem),
                  width: double.infinity,
                  child: Text(
                    'Semibold',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 56 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      letterSpacing: -1.12 * fem,
                      color: whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  // col2ToG (54:913)
                  width: 69 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // h1oML (54:914)
                        width: double.infinity,
                        child: Text(
                          'H1',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 56 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            letterSpacing: -1.12 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h2XYE (54:915)
                        width: double.infinity,
                        child: Text(
                          'H2',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 40 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h34o4 (54:916)
                        width: double.infinity,
                        child: Text(
                          'H3',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h4p1Y (54:917)
                        width: double.infinity,
                        child: Text(
                          'H4',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            letterSpacing: 1.44 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // h5M1U (54:918)
                        width: double.infinity,
                        child: Text(
                          'H5',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            letterSpacing: 0.64 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // body1GeE (54:919)
                        width: double.infinity,
                        child: Text(
                          'Body 1',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // buttonp9x (54:920)
                        width: double.infinity,
                        child: Text(
                          'BUTTON',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            letterSpacing: 0.64 * fem,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 42 * fem,
                      ),
                      SizedBox(
                        // labelZ7Y (54:921)
                        width: double.infinity,
                        child: Text(
                          'LABEL',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Work Sans',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: whiteColor,
                          ),
                        ),
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
 */
