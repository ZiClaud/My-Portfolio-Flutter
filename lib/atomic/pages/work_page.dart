import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/padding.dart';
import 'package:my_portfolio/atomic/atoms/responsive.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/atomic/molecules/button/icon_button.dart';
import 'package:my_portfolio/atomic/molecules/button/text_button.dart';
import 'package:my_portfolio/atomic/molecules/image_container/hd_image.dart';
import 'package:my_portfolio/data/basics/work_page.dart';
import 'package:my_portfolio/utils/navigation.dart';
import 'package:my_portfolio/utils/utils.dart';

/// Whole Work Page
class MainWorkPage extends StatelessWidget {
  final WorkPageData pageData;

  const MainWorkPage({super.key, required this.pageData});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const _WorkBackButton(),
                  const Spacer(),
                  _WorkTitle(title: pageData.title),
                  const Spacer(),
                  const SpaceWidgets(),
                ],
              ),
              _WorkSkills(skills: pageData.skills ?? []),
              const SpaceWidgets(inHeight: true),
              _ImageCarousel(images: pageData.images),
              const SpaceWidgets(inHeight: true),
              _WorkDescription(
                description1: pageData.description1,
                descriptionBold1: pageData.descriptionBold1,
                description2: pageData.description2 ?? '',
                descriptionBold2: pageData.descriptionBold2 ?? '',
              ),
              const Padding(padding: EdgeInsets.only(bottom: 125)),
            ],
          ),
        ),
      ),
    );
  }
}

class _WorkBackButton extends StatelessWidget {
  const _WorkBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyIconButton(icon: Icons.arrow_back, onPressed: () => navigateToHome(context));
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
class _ImageCarousel extends StatelessWidget {
  // TODO: Check if it's still laggy
  final List<WorkPageImage> images;

  const _ImageCarousel({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: CarouselSlider(
        options: CarouselOptions(autoPlay: true),
        items: images
            .map(
              (item) => Container(
                decoration: getContainerDecorationBorder(),
                child: item,
              ),
            )
            .toList(),
      ),
      desktop: SizedBox(
        width: 1024,
        height: 550,
        child: CarouselSlider(
          options: CarouselOptions(autoPlay: true),
          items: images
              .map(
                (item) => Container(
                  decoration: getContainerDecorationBorder(),
                  child: item,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

/// Title
class _WorkTitle extends StatelessWidget {
  final String title;

  const _WorkTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: h2Bold(context, color: neutral1Color),
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
