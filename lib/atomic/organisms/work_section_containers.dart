import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/padding.dart';
import 'package:my_portfolio/atomic/atoms/responsive.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/atomic/molecules/button/text_button.dart';
import 'package:my_portfolio/atomic/molecules/responsive/responsive_widgets.dart';
import 'package:my_portfolio/data/basics/work_page.dart';
import 'package:my_portfolio/utils/navigation.dart';

/// Work section containers
class WorkContainerImageText extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final String descriptionBold;
  final String category;
  final WorkPageData? page;

  const WorkContainerImageText({
    super.key,
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: _WorkContainerImageText(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        page: page,
        child: child,
      ),
      mobile: _WorkContainerMobile(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        page: page,
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
  final WorkPageData? page;

  const WorkContainerTextImage({
    super.key,
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: _WorkContainerTextImage(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        page: page,
        child: child,
      ),
      mobile: _WorkContainerMobile(
        title: title,
        description: description,
        descriptionBold: descriptionBold,
        category: category,
        page: page,
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
  final WorkPageData? page;

  const _WorkContainerImageText({
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
          page: page,
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
  final WorkPageData? page;

  const _WorkContainerTextImage({
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Text part
        _WorkTextPart(
          title: title,
          description: description,
          descriptionBold: descriptionBold,
          category: category,
          page: page,
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
  final WorkPageData? page;

  const _WorkContainerMobile({
    required this.child,
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.page,
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
          page: page,
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
    return ResponsiveBox(
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
  final WorkPageData? page;

  const _WorkTextPart({
    required this.title,
    required this.description,
    required this.descriptionBold,
    required this.category,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          _WorkTextTitle(title: title),
          _WorkTextDescription(
              description: description, descriptionBold: descriptionBold),
          const Spacer(),
          _WorkTextCategory(category: category),
          if (page != null)
            MyTextButton(
              text: tr('view_work'),
              onPressed: () {
                navigateToPage(context, page!.getPage());
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
  final WorkPageData? page;

  const _WorkTextPartMobile({
    required this.description,
    required this.descriptionBold,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _WorkTextDescription(
              description: description, descriptionBold: descriptionBold),
          if (page != null)
            Center(
              child: MyTextButton(
                text: tr("view_work"),
                onPressed: () {
                  navigateToPage(context, page!.getPage());
                },
              ),
            ),
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
    return Text(title, style: h5Bold(context, color: neutral1Color));
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
            style: h3Bold(context, color: neutral2Color),
          ),
          TextSpan(
            text: descriptionBold,
            style: h3Bold(context, color: neutral1Color),
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
      padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
      child: Text(
        category,
        style: body1TextLight(context, color: neutral1Color),
      ),
    );
  }
}
