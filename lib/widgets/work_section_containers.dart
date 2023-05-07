import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/widgets/widgets.dart';

import '../utils/navigate_to_page.dart';

/// Work section containers
class WorkContainerImageText extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute;

  const WorkContainerImageText({
    super.key,
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Image
        _WorkImagePart(image: child),

        /// Space between image and text
        const SizedBox(width: 32),

        /// Text part
        _WorkTextPart(
          title: title,
          description: description,
          descriptionBold: descriptionBold,
          category: category,
          pageRoute: pageRoute,
        ),
      ],
    );
  }
}

class WorkContainerTextImage extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute;

  const WorkContainerTextImage({
    super.key,
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Text part
        _WorkTextPart(
          title: title,
          description: description,
          descriptionBold: descriptionBold,
          category: category,
          pageRoute: pageRoute,
        ),

        /// Space between image and text
        const SizedBox(width: 32),

        /// Image
        _WorkImagePart(image: child),
      ],
    );
  }
}

class _WorkImagePart extends StatelessWidget {
  final Widget image;

  const _WorkImagePart({required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600 * fem,
      height: 500 * fem,
      child: image,
    );
  }
}

class _WorkTextPart extends StatelessWidget {
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute;

  const _WorkTextPart({
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600 * fem,
      // TODO: Change 600 to 550 if we don't want it to be perfectly centered
      height: 450 * fem,
      // TODO: It's 450 because 500 (like the image) looks bad
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          _WorkTextTitle(title: title),
          _WorkTextDescription(
              description: description, descriptionBold: descriptionBold),
          const Spacer(),
          _WorkTextCategory(category: category),
          if (pageRoute != null)
            MyButton(
              text: "VIEW WORK",
              onPressed: () {
                navigateToPage(context, pageRoute!);
              },
            ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _WorkTextTitle extends StatelessWidget {
  final String title;

  const _WorkTextTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: h5Bold(color: neutral1Color));
  }
}

class _WorkTextDescription extends StatelessWidget {
  final String description;
  final String descriptionBold;

  const _WorkTextDescription({
    required this.description,
    required this.descriptionBold,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
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
}

class _WorkTextCategory extends StatelessWidget {
  final String category;

  const _WorkTextCategory({required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.0 * fem, bottom: 5.0 * fem),
      child: Text(
        category,
        style: body1TextLight(color: neutral1Color),
      ),
    );
  }
}
