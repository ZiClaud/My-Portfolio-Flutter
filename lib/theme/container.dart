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
          child: Text(
            text,
            style: label(
              color: isHovering ? primaryColor : neutral1Color,
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
    {bool isAboutMe = false, bool isFooter = false}) {
  // TODO: Improve this part of the code
  if (isAboutMe) {
    return _sectionContainerRow(widgets, 996);
  } else if (isFooter) {
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

/// Space between sections/containers
Widget spaceBetween() {
  return SizedBox(
    height: 32 * fem,
    width: 32 * fem,
  );
}

/// Work containers
Widget workContainerImageText(
    {required Image image,
    required String title,
    required String description,
    required String descriptionBold,
    required String category,
    String? link}) {
  return SizedBox(
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Image
        _workImagePart(image),

        /// Space between image and text
        const SizedBox(width: 32),

        /// Text part
        _workTextPart(
          title: title,
          description: description,
          descriptionBold: descriptionBold,
          category: category,
          link: link,
        ),
      ],
    ),
  );
}

Widget workContainerTextImage(
    {required Image image,
    required String title,
    required String description,
    required String descriptionBold,
    required String category,
    required String link}) {
  return SizedBox(
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Text part
        _workTextPart(
          title: title,
          description: description,
          descriptionBold: descriptionBold,
          category: category,
          link: link,
        ),

        /// Space between image and text
        const SizedBox(width: 32),

        /// Image
        _workImagePart(image),
      ],
    ),
  );
}

Widget _workImagePart(Image image) {
  return SizedBox(
    width: 600 * fem,
    height: 500 * fem,
    child: image,
  );
}

Widget _workTextPart({
  required String title,
  required String description,
  required String descriptionBold,
  required String category,
  String? link,
}) {
  return SizedBox(
    width: 550 * fem,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _workTextTitle(title),
        _workTextDescription(description, '$descriptionBold\n'),
        _workTextCategory(category),
        _workBottomButton(link),
      ],
    ),
  );
}

Widget _workTextTitle(String title) {
  return Text(
    title,
    style: h5Bold(color: neutral1Color),
  );
}

Widget _workTextDescription(String description, String descriptionBold) {
  return RichText(
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
  );
}

Widget _workTextCategory(String category) {
  return Padding(
    padding: EdgeInsets.only(left: 5.0 * fem, bottom: 5.0 * fem),
    child: Text(
      category,
      style: body1TextLight(color: neutral1Color),
    ),
  );
}

Widget _workBottomButton(String? link) {
  // TODO: Add on hover effect
  return TextButton(
    onPressed: () {
      //TODO: launch(link!);
    },
    style: TextButton.styleFrom(
      // TODO: remove?
      padding: EdgeInsets.zero,
    ),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: neutral2Color),
        borderRadius: BorderRadius.circular(100 * fem),
      ),
      child: SizedBox(
        width: 150 * fem,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'VIEW WORK',
                style: buttonTextLight(color: neutral1Color),
              ),
            ),
            Container(
              child: arrowRightImg,
            ),
          ],
        ),
      ),
    ),
  );
}
