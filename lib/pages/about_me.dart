import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

Widget getAboutMePage() {
  return Container(
    // aboutmeRW2 (77:362)
    padding:  const EdgeInsets.fromLTRB(107*fem, 107.5*fem, 107*fem, 107.5*fem),
    width:  double.infinity,
    height:  996*fem,
    decoration:  const BoxDecoration (
      gradient:  LinearGradient (
        begin:  Alignment(0, -1),
        end:  Alignment(0, 1),
        colors:  <Color>[Color(0xff010208), Color(0xff010206), Color(0xff040008), Color(0xff010101), Color(0xff010101), Color(0xff010101), Color(0xff010101)],
        stops:  <double>[0.164, 0.205, 0.248, 0.305, 0.341, 0.362, 1],
      ),
    ),
    child:
    SizedBox(
      // wrapperMgW (77:363)
      width:  double.infinity,
      height:  double.infinity,
      child:
      Row(
        crossAxisAlignment:  CrossAxisAlignment.center,
        children:  [
          Container(
            // titledescriptionhVU (77:364)
            margin:  const EdgeInsets.fromLTRB(0*fem, 244.5*fem, 73*fem, 244.5*fem),
            height:  double.infinity,
            child:
            Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children:  [
                Container(
                  // projecttitleEEW (77:365)
                  margin:  const EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                  child:
                  Text(
                    'A BIT ABOUT ME',
                    style:  SafeGoogleFont (
                      'Work Sans',
                      fontSize:  24*ffem,
                      fontWeight:  FontWeight.w600,
                      height:  1.5*ffem/fem,
                      letterSpacing:  1.44*fem,
                      color:  const Color(0xffe3e4e6),
                    ),
                  ),
                ),
                Container(
                  // descriptioniQa (77:366)
                  constraints:  const BoxConstraints (
                    maxWidth:  557*fem,
                  ),
                  child:
                  RichText(
                    text:
                    TextSpan(
                      style:  SafeGoogleFont (
                        'Work Sans',
                        fontSize:  32*ffem,
                        fontWeight:  FontWeight.w400,
                        height:  1.5*ffem/fem,
                        color:  const Color(0xffffffff),
                      ),
                      children:  [
                        TextSpan(
                          text:  'I am a software developer who is passionate about creating ',
                          style:  SafeGoogleFont (
                            'Work Sans',
                            fontSize:  32*ffem,
                            fontWeight:  FontWeight.w300,
                            height:  1.5*ffem/fem,
                            color:  const Color(0x8ce3e4e6),
                          ),
                        ),
                        TextSpan(
                          text:  'beautiful and joyful digital experiences. Besides programming, I love',
                          style:  SafeGoogleFont (
                            'Work Sans',
                            fontSize:  32*ffem,
                            fontWeight:  FontWeight.w600,
                            height:  1.5*ffem/fem,
                            color:  const Color(0xffe3e4e6),
                          ),
                        ),
                        TextSpan(
                          text:  ' ',
                          style:  SafeGoogleFont (
                            'Work Sans',
                            fontSize:  32*ffem,
                            fontWeight:  FontWeight.w600,
                            height:  1.5*ffem/fem,
                            color:  const Color(0xffffffff),
                          ),
                        ),
                        TextSpan(
                          text:  'music, design and travelling. ',
                          style:  SafeGoogleFont (
                            'Work Sans',
                            fontSize:  32*ffem,
                            fontWeight:  FontWeight.w600,
                            height:  1.5*ffem/fem,
                            color:  const Color(0xffe3e4e6),
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
            height:  double.infinity,
            child:
            Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children:  [
                Container(
                  // coverE3U (77:368)
                  margin:  const EdgeInsets.fromLTRB(0*fem, 0*fem, 32*fem, 0*fem),
                  width:  282*fem,
                  height:  408*fem,
                  child:
                  Image.network(
                    "[Image url]",
                    width:  282*fem,
                    height:  408*fem,
                  ),
                ),
                SizedBox(
                  // verticalvS6 (77:369)
                  height:  double.infinity,
                  child:
                  Column(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children:  [
                      Container(
                        // covers6S (77:370)
                        margin:  const EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32*fem),
                        width:  282*fem,
                        height:  374*fem,
                        child:
                        Image.network(
                          "[Image url]",
                          width:  282*fem,
                          height:  374*fem,
                        ),
                      ),
                      SizedBox(
                        // coveryvA (77:371)
                        width:  282*fem,
                        height:  375*fem,
                        child:
                        Image.network(
                          "[Image url]",
                          width:  282*fem,
                          height:  375*fem,
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
