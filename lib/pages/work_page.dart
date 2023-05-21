import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/utils.dart';
import 'package:my_portfolio/widgets/widgets.dart';

/// Whole Work Page
class MainWorkPage extends StatelessWidget {
  final String title;
  final List<String>? skills;
  final String description1;
  final String descriptionBold1;
  final String? description2;
  final String? descriptionBold2;
  final List<WorkPageImage> images;

  const MainWorkPage(
      {Key? key,
      required this.title,
      this.skills,
      required this.description1,
      required this.descriptionBold1,
      this.description2,
      this.descriptionBold2,
      required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: defaultPadding(context),
          child: ListView(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
//            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _WorkTitle(title: title),
              _WorkSkills(skills: skills ?? []),
              const SpaceWidgets(inHeight: true),
              _ImageCarousel(images: images),
              const SpaceWidgets(inHeight: true),
              _WorkDescription(
                description1: description1,
                descriptionBold1: descriptionBold1,
                description2: description2 ?? '',
                descriptionBold2: descriptionBold2 ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Image
class WorkPageImage extends StatelessWidget {
  final String? url;
  final String urlHD;

  const WorkPageImage({Key? key, this.url, required this.urlHD})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: getContainerRadius(),
      child: SizedBox(
        width: 1024,
        height: 550,
        child: HighDefinitionImage(
          lowResImageURL: url,
          highResImageURL: urlHD,
          width: 1024,
          height: 550,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

/// Carousel
class _ImageCarousel extends StatelessWidget { // TODO: Check if it's still laggy
  final List<WorkPageImage> images;

  const _ImageCarousel({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 550),
      items: images
          .map(
            (item) => Container(
              decoration: getContainerDecorationBorder(),
              child: item,
            ),
          )
          .toList(),
    );
  }
}

/// Title
class _WorkTitle extends StatelessWidget {
  final String title;

  const _WorkTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          title,
          style: h2Bold(context, color: neutral1Color),
        ),
      ),
    );
  }
}

/// Skills
class _WorkSkills extends StatelessWidget {
  final List<String> skills;

  const _WorkSkills({Key? key, required this.skills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: skills
              .map(
                (skill) => Chip(
                  label: Text(
                    skill,
                    style: h5Bold(context, color: backgroundColor),
                  ),
                  backgroundColor: neutral2Color,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

/// Description
class _WorkDescription extends StatelessWidget {
  final String description1;
  final String descriptionBold1;
  final String description2;
  final String descriptionBold2;

  const _WorkDescription(
      {required this.description1,
      required this.descriptionBold1,
      required this.description2,
      required this.descriptionBold2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$description1 ',
              style: h3Light(context, color: neutral2Color),
            ),
            TextSpan(
              text: '$descriptionBold1 ',
              style: h3Bold(context, color: neutral1Color),
            ),
            TextSpan(
              text: '$description2 ',
              style: h3Light(context, color: neutral2Color),
            ),
            TextSpan(
              text: descriptionBold2,
              style: h3Bold(context, color: neutral1Color),
            ),
          ],
        ),
      ),
    );
  }
}
