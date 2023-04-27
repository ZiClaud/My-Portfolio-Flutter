import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

import '../theme/colors.dart';

Widget getSkillsPage() {
  return Container(
    // skillsi5G (132:231)
    padding:
        const EdgeInsets.fromLTRB(112 * fem, 80 * fem, 112 * fem, 130 * fem),
    width: double.infinity,
    height: 583.9 * fem,
    decoration: const BoxDecoration(gradient: backgroundColorGradient),
    child: Container(
      // skillsFzJ (132:232)
      padding: const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // someofmyskillsamg (132:234)
            margin:
                const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 96 * fem),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Work Sans',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w300,
                  height: 1.5 * ffem / fem,
                  color: neutral1Color,
                ),
                children: [
                  TextSpan(
                    text: 'Some of my',
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 40 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5 * ffem / fem,
                      color: neutral2Color,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 40 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5 * ffem / fem,
                      color: neutral1Color,
                    ),
                  ),
                  TextSpan(
                    text: 'Skills',
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 40 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      color: neutral1Color,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            // logospCA (132:235)
            width: double.infinity,
            height: 201.9 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupottgk5p (DmfgcNmGCt6MR7J4FRoTTg)
                  padding: const EdgeInsets.fromLTRB(
                      0 * fem, 0.03 * fem, 64 * fem, 0.03 * fem),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _image(image: flutterImg),
                      // TODO: Put flutter image
                      const SizedBox(
                        width: 64 * fem,
                      ),
                      _image(image: sqlImg),
                      // TODO: Put SQL image
                      const SizedBox(
                        width: 64 * fem,
                      ),
                      _image(image: pythonImg),
                      // TODO: Put Python image
                      const SizedBox(
                        width: 64 * fem,
                      ),
                      _image(image: javaImg),
                      // TODO: Put Java image
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

Widget _imageUrl({required String imageURL}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0 * fem, 0.92 * fem, 0 * fem, 0.92 * fem),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: SizedBox(
        height: double.infinity,
        child: Center(
          // fluttercoloredoZt (I133:307;133:301)
          child: SizedBox(
            width: 200 * fem,
            height: 200 * fem,
            child: Image.network(
              imageURL,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _image({required Image image}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0 * fem, 0.92 * fem, 0 * fem, 0.92 * fem),
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: SizedBox(
        height: double.infinity,
        child: Center(
          // fluttercoloredoZt (I133:307;133:301)
          child: SizedBox(
            width: 200 * fem,
            height: 200 * fem,
            child: image,
          ),
        ),
      ),
    ),
  );
}
