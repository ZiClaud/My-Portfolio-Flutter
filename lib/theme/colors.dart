import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF3688FF);
const Color backgroundColor = Color(0xFF010208);
const Color neutral1Color = Color(0xFFE3E4E6);
const Color neutral2Color = Color(0x8CE3E4E6);
const Color whiteColor = Color(0xFFFFFFFF);

const Color backgroundColorLightMode = Colors.blueGrey;

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
    padding: const EdgeInsets.fromLTRB(80 * fem, 80 * fem, 79 * fem, 80 * fem),
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color(0xff363636),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 80 * fem, 0 * fem),
          width: 200 * fem,
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 80 * fem, 0 * fem),
          width: 200 * fem,
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 79 * fem, 0 * fem),
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
          height: 315 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
