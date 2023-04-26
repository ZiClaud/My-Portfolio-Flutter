import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';

Widget container1(
    {required String imageURL,
    required String title,
    required String description,
    required String descriptionBold,
    required String category,
    String? link}) {
  return Container(
    // coverleftalignedVuL (39:449)
    margin: const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
    padding: const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 41 * fem, 0 * fem),
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          // col1Cok (39:435)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 32 * fem, 0 * fem),
          width: 591 * fem,
          height: 500 * fem,
          child: Image.network(
            imageURL,
            width: 591 * fem,
            height: 500 * fem,
          ),
        ),
        SizedBox(
// col2KNa (39:438)
          width: 550 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
// content4LA (39:439)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0 * fem, 32 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
// titledescriptionCBU (39:440)
                      margin: const EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 24 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
// projecttitleXUe (39:441)
                            margin: const EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 16 * fem),
                            child: Text(
                              title,
                              style: SafeGoogleFont(
                                'Work Sans',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                letterSpacing: 0.64 * fem,
                                color: const Color(0xffe3e4e6),
                              ),
                            ),
                          ),
                          Container(
// descriptionoh4 (39:442)
                            constraints: const BoxConstraints(
                              maxWidth: 550 * fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont(
                                  'Work Sans',
                                  fontSize: 32 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xffe3e4e6),
                                ),
                                children: [
                                  TextSpan(
                                    text: description,
                                    style: SafeGoogleFont(
                                      'Work Sans',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0x8ce3e4e6),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: SafeGoogleFont(
                                      'Work Sans',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xffe3e4e6),
                                    ),
                                  ),
                                  TextSpan(
                                    text: descriptionBold,
                                    style: SafeGoogleFont(
                                      'Work Sans',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xffe3e4e6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
// categoryEZQ (39:443)
                      category,
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffe3e4e6),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
// buttonmpE (39:805)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 387 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                        16 * fem, 8 * fem, 25 * fem, 8 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0x8ce3e4e6)),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
// textpXc (I39:805;39:784)
                          margin: const EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          child: Text(
                            'VIEW WORK',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              letterSpacing: 0.64 * fem,
                              color: const Color(0xffe3e4e6),
                            ),
                          ),
                        ),
                        SizedBox(
// iconWfL (I39:805;39:785)
                          width: 7 * fem,
                          height: 14 * fem,
                          child: Image.network(
                            "[Image url]", // TODO: Right arrow Icon
                            width: 7 * fem,
                            height: 14 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget container2(
    {required String imageURL,
    required String title,
    required String description,
    required String descriptionBold,
    required String category,
    required String link}) {
  return SizedBox(
    // coverrightaligned3QN (39:632)
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          // col2ncr (39:636)
          margin:
              const EdgeInsets.fromLTRB(0 * fem, 0 * fem, 73 * fem, 0 * fem),
          width: 550 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // contentXaS (39:637)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0 * fem, 32 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // titledescriptionrMp (39:638)
                      margin: const EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 24 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // projecttitleb4W (39:639)
                            margin: const EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 16 * fem),
                            child: Text(
                              title,
                              style: SafeGoogleFont(
                                'Work Sans',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                letterSpacing: 0.64 * fem,
                                color: const Color(0xffe3e4e6),
                              ),
                            ),
                          ),
                          Container(
                            // descriptionJjc (39:640)
                            constraints: const BoxConstraints(
                              maxWidth: 550 * fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont(
                                  'Work Sans',
                                  fontSize: 32 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: const Color(0xffe3e4e6),
                                ),
                                children: [
                                  TextSpan(
                                    text: description,
                                    style: SafeGoogleFont(
                                      'Work Sans',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0x8ce3e4e6),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: SafeGoogleFont(
                                      'Work Sans',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xffe3e4e6),
                                    ),
                                  ),
                                  TextSpan(
                                    text: descriptionBold,
                                    style: SafeGoogleFont(
                                      'Work Sans',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xffe3e4e6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      // category1R4 (39:641)
                      category,
                      style: SafeGoogleFont(
                        'Work Sans',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffe3e4e6),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
// button9nA (39:860)
                margin: const EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 387 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                        16 * fem, 8 * fem, 25 * fem, 8 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0x8ce3e4e6)),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
// textDn2 (I39:860;39:784)
                          margin: const EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          child: Text(
                            'VIEW WORK',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              letterSpacing: 0.64 * fem,
                              color: const Color(0xffe3e4e6),
                            ),
                          ),
                        ),
                        SizedBox(
// icon8tz (I39:860;39:785)
                          width: 7 * fem,
                          height: 14 * fem,
                          child: Image.network(
                            "[Image url]", // TODO: Fill with arrow URL
                            width: 7 * fem,
                            height: 14 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
// col1GVQ (39:633)
          width: 591 * fem,
          height: 500 * fem,
          child: Image.network(
            imageURL,
            width: 591 * fem,
            height: 500 * fem,
          ),
        ),
      ],
    ),
  );
}

//////////////////////////////
Widget _defaultContainer1() {
  return container1(
      imageURL: "",
      title: "title",
      description: "description",
      descriptionBold: "descriptionBold",
      category: "category",
      link: "link");
}

Widget _defaultContainer2() {
  return container2(
      imageURL: "",
      title: "PROJECT TITLE",
      description: "Lorem ipsum dolor sit amet, consectetur",
      descriptionBold: "adipiscing elit. Ultrices lorem non feugiat egestas amet.",
      category: "Category",
      link: "link");
}

Widget _getContainerPage() {
  return Container(
    // carddML (39:631)
    padding: const EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 16 * fem),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.circular(5 * fem),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _defaultContainer1(),
        _defaultContainer2(),
      ],
    ),
  );
}
