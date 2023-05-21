import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/navigate_to_page.dart';
import 'package:my_portfolio/widgets/widgets.dart';

// TODO: Move everything to works.dart in basics

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
    return ResponsiveWidget(
      desktop: _WorkContainerImageText(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        pageRoute: pageRoute,
        child: child,
      ),
      mobile: _WorkContainerMobile(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        pageRoute: pageRoute,
        child: child,
      ),
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
    return ResponsiveWidget(
      desktop: _WorkContainerTextImage(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        pageRoute: pageRoute,
        child: child,
      ),
      mobile: _WorkContainerMobile(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        pageRoute: pageRoute,
        child: child,
      ),
    );
  }
}

class _WorkContainerImageText extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute;

  const _WorkContainerImageText({
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
        const SpaceWidgets(inWidth: true),

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

class _WorkContainerTextImage extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute;

  const _WorkContainerTextImage({
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
        const SpaceWidgets(inWidth: true),

        /// Image
        _WorkImagePart(image: child),
      ],
    );
  }
}

class _WorkContainerMobile extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final String? pageRoute;

  const _WorkContainerMobile({
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// Title and category
        _WorkTitleAndCategoryMobile(
          title: title,
          category: category,
        ),

        /// Image
        _WorkImagePart(image: child),

        /// Space between image and text
        const SpaceWidgets(inHeight: true),

        /// Text part
        _WorkTextPartMobile(
          description: description,
          descriptionBold: descriptionBold,
          pageRoute: pageRoute,
        ),
      ],
    );
  }
}

class _WorkTitleAndCategoryMobile extends StatelessWidget {
  final String title;
  final String category;

  const _WorkTitleAndCategoryMobile({
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Spacer(),

        /// Title
        _WorkTextTitle(title: title),
        const Spacer(),

        /// Category
        _WorkTextCategory(category: category),
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
      width: 600,
      height: 500,
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
      width: 600,
      // TODO: Change 600 to 550 if we don't want it to be perfectly centered
      height: 450,
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

class _WorkTextPartMobile extends StatelessWidget {
  final String description;
  final String descriptionBold;
  final String? pageRoute;

  const _WorkTextPartMobile({
    required this.description,
    required this.descriptionBold,
    this.pageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      // TODO: Change 600 to 550 if we don't want it to be perfectly centered
      height: 450,
      // TODO: It's 450 because 500 (like the image) looks bad
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          _WorkTextDescription(
              description: description, descriptionBold: descriptionBold),
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
      padding: EdgeInsets.only(left: 5.0, bottom: 5.0),
      child: Text(
        category,
        style: body1TextLight(color: neutral1Color),
      ),
    );
  }
}
