import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/safe_google_font.dart';
import 'package:my_portfolio/theme/typography.dart';

/// WIDGETS

/// Clickable image that changes color when hovered
Widget clickableImage(
    {required Image Function({required bool isHovering}) image,
    required void Function() onPressed}) {
  bool isHovering = false;
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovering = false;
          });
        },
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: image(isHovering: isHovering),
        ),
      );
    },
  );
}

Widget clickableText(
    {required String text, required void Function() onPressed}) {
  bool isHovering = false;
  bool isClicked = false;
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovering = false;
          });
        },
        child: TextButton(
          onPressed: () {
            onPressed;
            setState(() {
              isClicked = true;
            });
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text(
            text,
            style: label(
              color: isClicked ? primaryColor : isHovering ? neutral2Color : neutral1Color,
            ),
          ),
        ),
      );
    },
  );
}

/// Most important widget
Widget sectionContainerColumn(List<Widget> widgets) {
  //TODO maybe put "Center" in here
  return Container(
    // homeHaA (77:258)
    padding: EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: backgroundColorGradient,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (Widget widget in widgets) widget,
      ],
    ),
  );
}

Widget sectionContainerRow(List<Widget> widgets,
    {bool? isAboutMe, bool? isFooter}) {
  // TODO: Improve this part of the code
  if (isAboutMe != null && isAboutMe) {
    return _sectionContainerRow(widgets, 996);
  } else if (isFooter != null && isFooter) {
    return _sectionContainerRow(widgets, 425);
  } else {
    return _sectionContainerRow(widgets, 996);
  }
}

Widget _sectionContainerRow(List<Widget> widgets, double height) {
  return Container(
    padding: EdgeInsets.fromLTRB(112 * fem, 24 * fem, 112 * fem, 57 * fem),
    width: double.infinity,
    height: height * fem,
    decoration: const BoxDecoration(gradient: backgroundColorGradient),
    child: SizedBox(
      // wrapperMgW (77:363)
      width: double.infinity,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (Widget widget in widgets) widget,
        ],
      ),
    ),
  );
}

Widget container1(
    {required Image image,
    required String title,
    required String description,
    required String descriptionBold,
    required String category,
    String? link}) {
  return Container(
    // coverleftalignedVuL (39:449)
    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
    padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 41 * fem, 0 * fem),
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          // col1Cok (39:435)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 32 * fem, 0 * fem),
          width: 591 * fem,
          height: 500 * fem,
          child: image,
        ),
        SizedBox(
// col2KNa (39:438)
          width: 550 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
// content4LA (39:439)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
// titledescriptionCBU (39:440)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 24 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
// projecttitleXUe (39:441)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 16 * fem),
                            child: Text(
                              title,
                              style: h5Bold(
                                color: neutral1Color,
                              ),
                            ),
                          ),
                          Container(
// descriptionoh4 (39:442)
                            constraints: BoxConstraints(
                              maxWidth: 550 * fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: h3LightBig(color: neutral1Color),
                                children: [
                                  TextSpan(
                                    text: description,
                                    style: h3Bold(color: neutral2Color),
                                  ),
                                  TextSpan(
                                    text: descriptionBold,
                                    style: h3Bold(color: neutral1Color),
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
                      style: body1TextLight(color: neutral1Color),
                    ),
                  ],
                ),
              ),
              Container(
// buttonmpE (39:805)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 387 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 8 * fem, 25 * fem, 8 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: neutral2Color),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
// textpXc (I39:805;39:784)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          child: Text(
                            'VIEW WORK',
                            style: buttonTextLight(color: neutral1Color),
                          ),
                        ),
                        SizedBox(
// iconWfL (I39:805;39:785)
                          width: 12 * fem,
                          height: 19 * fem,
                          child: arrowRightImg,
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
    {required Image image,
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
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 73 * fem, 0 * fem),
          width: 550 * fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // contentXaS (39:637)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // titledescriptionrMp (39:638)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 24 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // projecttitleb4W (39:639)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 16 * fem),
                            child: Text(
                              title,
                              style: h5Bold(color: neutral1Color),
                            ),
                          ),
                          Container(
                            // descriptionJjc (39:640)
                            constraints: BoxConstraints(
                              maxWidth: 550 * fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: h3Light(color: neutral1Color),
                                children: [
                                  TextSpan(
                                    text: description,
                                    style: h3Bold(color: neutral2Color),
                                  ),
                                  TextSpan(
                                    text: descriptionBold,
                                    style: h3Bold(color: neutral1Color),
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
                      style: body1TextLight(color: neutral1Color),
                    ),
                  ],
                ),
              ),
              Container(
// button9nA (39:860)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 387 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 8 * fem, 25 * fem, 8 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: neutral2Color),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
// textDn2 (I39:860;39:784)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          child: Text(
                            'VIEW WORK',
                            style: buttonTextLight(color: neutral1Color),
                          ),
                        ),
                        SizedBox(
// icon8tz (I39:860;39:785)
                          width: 12 * fem,
                          height: 19 * fem,
                          child: arrowRightImg,
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
          child: image,
        ),
      ],
    ),
  );
}

/*
Widget _defaultContainer1() {
  return container1(
      image: invisibleWorkImg,
      title: "title",
      description: "description",
      descriptionBold: "descriptionBold",
      category: "category",
      link: "link");
}

Widget _defaultContainer2() {
  return container2(
      image: jeiomImg,
      title: "PROJECT TITLE",
      description: "Lorem ipsum dolor sit amet, consectetur",
      descriptionBold:
          "adipiscing elit. Ultrices lorem non feugiat egestas amet.",
      category: "Category",
      link: "link");
}

Widget _getContainerPage() {
  return Container(
    // carddML (39:631)
    padding: EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 16 * fem),
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
*/
