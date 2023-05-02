import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/widgets/widgets.dart';

/// Work containers
Widget workContainerImageText(
    {required Widget image,
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
    {required Widget image,
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

Widget _workImagePart(Widget image) {
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
    width: 600 * fem,
    // TODO: Change 600 to 550 if we don't want it to be perfectly centered
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
  return MyButton(
    text: "VIEW WORK",
    onPressed: () {
      //TODO: add onPressed launch(link!);
    },
  );
}
