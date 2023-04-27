import 'package:flutter/cupertino.dart';

const Color primaryColor = Color(0xFF3688FF);
const Color backgroundColor = Color(0xFF010208);
const Color neutral1Color = Color(0xFFE3E4E6);
const Color neutral2Color = Color(0x8CE3E4E6);
const Color whiteColor = Color(0xFFFFFFFF);

const LinearGradient backgroundColorGradient = LinearGradient(
  begin: Alignment(0, -1),
  end: Alignment(0, 1),
  colors: <Color>[
    Color(0xff010208),
    Color(0xff010206),
    Color(0xff040008),
    Color(0xff010101),
    Color(0xff010101),
    Color(0xff010101),
    Color(0xff010101)
  ],
  stops: <double>[0.164, 0.205, 0.248, 0.305, 0.341, 0.362, 1],
);

/*
Background color - Gradient
#010208     100%
#010206     100%
#040008     100%
#010101     100%
#010101     100%
#010101     100%
#010101     100%
 */

/*
Widget getColorPage() {
  return Container(
    // colorrF4 (54:960)
    padding: const EdgeInsets.fromLTRB(80 * fem, 80 * fem, 79 * fem, 80 * fem),
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color(0xff363636),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // primaryXc6 (54:961)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 80 * fem, 0 * fem),
          width: 200 * fem,
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // primarySyx (54:962)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0 * fem, 55 * fem),
                width: double.infinity,
                height: 200 * fem,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100 * fem),
                    topRight: Radius.circular(100 * fem),
                    bottomRight: Radius.circular(100 * fem),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(-0.995, -1.02),
                    end: Alignment(1.142, 1.029),
                    colors: <Color>[primaryColor, primaryColor],
                    stops: <double>[0, 1],
                  ),
                ),
              ),
              Text(
                // primary74W (54:963)
                'PRIMARY',
                style: SafeGoogleFont(
                  'Work Sans',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  letterSpacing: 2.4 * fem,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          // background1Qn (54:964)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 80 * fem, 0 * fem),
          width: 200 * fem,
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // backgroundjLn (54:965)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0 * fem, 55 * fem),
                width: double.infinity,
                height: 200 * fem,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100 * fem),
                    topRight: Radius.circular(100 * fem),
                    bottomRight: Radius.circular(100 * fem),
                  ),
                  gradient: backgroundColorGradient,
                ),
              ),
              Text(
                // bgAgz (54:966)
                'BG',
                style: SafeGoogleFont(
                  'Work Sans',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  letterSpacing: 2.4 * fem,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          // neutral1K46 (54:967)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 79 * fem, 0 * fem),
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // neautral1SuQ (54:968)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0 * fem, 55 * fem),
                width: 200 * fem,
                height: 200 * fem,
                decoration: const BoxDecoration(
                  color: neutral1Color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100 * fem),
                    topRight: Radius.circular(100 * fem),
                    bottomRight: Radius.circular(100 * fem),
                  ),
                ),
              ),
              Text(
                // neutral1y8e (54:969)
                'NEUTRAL 1',
                style: SafeGoogleFont(
                  'Work Sans',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  letterSpacing: 2.4 * fem,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          // neutral2WeN (54:970)
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // neautral2fnA (54:971)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0 * fem, 55 * fem),
                width: 200 * fem,
                height: 200 * fem,
                decoration: const BoxDecoration(
                  color: neutral2Color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100 * fem),
                    topRight: Radius.circular(100 * fem),
                    bottomRight: Radius.circular(100 * fem),
                  ),
                ),
              ),
              Text(
                // neutral2zZY (54:972)
                'NEUTRAL 2',
                style: SafeGoogleFont(
                  'Work Sans',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  letterSpacing: 2.4 * fem,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
 */
